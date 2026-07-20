cask "font-mozilla-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mozillatext/MozillaText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Mozilla Text"
  homepage "https://fonts.google.com/specimen/Mozilla+Text"

  font "MozillaText[wght].ttf"

  # No zap stanza required
end
