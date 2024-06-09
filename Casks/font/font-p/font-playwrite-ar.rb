cask "font-playwrite-ar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritear/PlaywriteAR%5Bwght%5D.ttf"
  name "Playwrite AR"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteAR[wght].ttf"

  # No zap stanza required
end
