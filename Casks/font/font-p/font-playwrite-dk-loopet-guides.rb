cask "font-playwrite-dk-loopet-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkloopetguides/PlaywriteDKLoopetGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DK Loopet Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DK+Loopet+Guides"

  font "PlaywriteDKLoopetGuides-Regular.ttf"

  # No zap stanza required
end
