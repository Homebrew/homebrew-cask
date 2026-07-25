cask "font-wix-madefor-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wixmadefordisplay/WixMadeforDisplay%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Wix Madefor Display"
  homepage "https://fonts.google.com/specimen/Wix+Madefor+Display"

  font "WixMadeforDisplay[wght].ttf"

  # No zap stanza required
end
