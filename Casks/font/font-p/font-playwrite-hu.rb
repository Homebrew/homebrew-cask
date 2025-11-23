cask "font-playwrite-hu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehu/PlaywriteHU%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HU"
  homepage "https://fonts.google.com/specimen/Playwrite+HU"

  font "PlaywriteHU[wght].ttf"

  # No zap stanza required
end
