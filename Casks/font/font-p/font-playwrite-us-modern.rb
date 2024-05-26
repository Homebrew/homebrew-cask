cask "font-playwrite-us-modern" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteusmodern/PlaywriteUSModern%5Bwght%5D.ttf"
  name "Playwrite US Modern"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteUSModern[wght].ttf"

  # No zap stanza required
end
