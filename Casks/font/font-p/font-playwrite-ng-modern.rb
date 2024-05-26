cask "font-playwrite-ng-modern" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritengmodern/PlaywriteNGModern%5Bwght%5D.ttf"
  name "Playwrite NG Modern"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteNGModern[wght].ttf"

  # No zap stanza required
end
