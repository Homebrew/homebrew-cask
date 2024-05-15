cask "font-cabin-sketch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cabinsketch"
  name "Cabin Sketch"
  homepage "https://fonts.google.com/specimen/Cabin+Sketch"

  font "CabinSketch-Bold.ttf"
  font "CabinSketch-Regular.ttf"

  # No zap stanza required
end
