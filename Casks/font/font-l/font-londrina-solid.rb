cask "font-londrina-solid" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/londrinasolid"
  name "Londrina Solid"
  homepage "https://fonts.google.com/specimen/Londrina+Solid"

  font "LondrinaSolid-Black.ttf"
  font "LondrinaSolid-Light.ttf"
  font "LondrinaSolid-Regular.ttf"
  font "LondrinaSolid-Thin.ttf"

  # No zap stanza required
end
