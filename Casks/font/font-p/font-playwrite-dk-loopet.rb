cask "font-playwrite-dk-loopet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkloopet/PlaywriteDKLoopet%5Bwght%5D.ttf"
  name "Playwrite DK Loopet"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteDKLoopet[wght].ttf"

  # No zap stanza required
end
