cask "font-mozilla-headline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mozillaheadline/MozillaHeadline%5Bwdth%2Cwght%5D.ttf"
  name "Mozilla Headline"
  homepage "https://github.com/mozilla/mozilla-headline-type"

  font "MozillaHeadline[wdth,wght].ttf"

  # No zap stanza required
end
