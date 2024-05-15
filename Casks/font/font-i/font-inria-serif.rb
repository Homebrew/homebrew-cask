cask "font-inria-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inriaserif"
  name "Inria Serif"
  homepage "https://fonts.google.com/specimen/Inria+Serif"

  font "InriaSerif-Bold.ttf"
  font "InriaSerif-BoldItalic.ttf"
  font "InriaSerif-Italic.ttf"
  font "InriaSerif-Light.ttf"
  font "InriaSerif-LightItalic.ttf"
  font "InriaSerif-Regular.ttf"

  # No zap stanza required
end
