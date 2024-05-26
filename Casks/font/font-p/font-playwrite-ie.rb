cask "font-playwrite-ie" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteie/PlaywriteIE%5Bwght%5D.ttf"
  name "Playwrite IE"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteIE[wght].ttf"

  # No zap stanza required
end
