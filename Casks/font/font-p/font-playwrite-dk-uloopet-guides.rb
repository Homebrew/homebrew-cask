cask "font-playwrite-dk-uloopet-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedkuloopetguides/PlaywriteDKUloopetGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DK Uloopet Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DK+Uloopet+Guides"

  font "PlaywriteDKUloopetGuides-Regular.ttf"

  # No zap stanza required
end
