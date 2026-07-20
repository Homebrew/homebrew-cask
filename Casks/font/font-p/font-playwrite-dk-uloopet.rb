cask "font-playwrite-dk-uloopet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkuloopet/PlaywriteDKUloopet%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DK Uloopet"
  homepage "https://fonts.google.com/specimen/Playwrite+DK+Uloopet"

  font "PlaywriteDKUloopet[wght].ttf"

  # No zap stanza required
end
