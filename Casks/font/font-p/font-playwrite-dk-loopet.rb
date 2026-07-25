cask "font-playwrite-dk-loopet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkloopet/PlaywriteDKLoopet%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DK Loopet"
  homepage "https://fonts.google.com/specimen/Playwrite+DK+Loopet"

  font "PlaywriteDKLoopet[wght].ttf"

  # No zap stanza required
end
