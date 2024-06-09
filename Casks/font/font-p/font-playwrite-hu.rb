cask "font-playwrite-hu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehu/PlaywriteHU%5Bwght%5D.ttf"
  name "Playwrite HU"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteHU[wght].ttf"

  # No zap stanza required
end
