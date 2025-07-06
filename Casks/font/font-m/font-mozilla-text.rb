cask "font-mozilla-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mozillatext/MozillaText%5Bwght%5D.ttf"
  name "Mozilla Text"
  homepage "https://github.com/mozilla/mozilla-text-type"

  font "MozillaText[wght].ttf"

  # No zap stanza required
end
