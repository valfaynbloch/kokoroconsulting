#!/bin/sh
# Makes viewable copies (*-preview.html) of the .dc.html design files,
# which need support.js to show their colours. Run after editing a .dc.html file:
#   sh make-previews.sh
cd "$(dirname "$0")"
for f in Kokoro Kokoro-v3 Kokoro-v4 Work Journey; do
  sed -e 's/{{accent}}/#7A1E1E/g' -e '/support\.js/d' \
      -e 's/Kokoro\.dc\.html/Kokoro-preview.html/g' \
      -e 's/Work\.dc\.html/Work-preview.html/g' \
      -e 's/Journey\.dc\.html/Journey-preview.html/g' \
      "$f.dc.html" > "$f-preview.html"
done
