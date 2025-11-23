cask "font-ubuntu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ufl/ubuntu"
  name "Ubuntu"
  homepage "https://fonts.google.com/specimen/Ubuntu"

  font "Ubuntu-Bold.ttf"
  font "Ubuntu-BoldItalic.ttf"
  font "Ubuntu-Italic.ttf"
  font "Ubuntu-Light.ttf"
  font "Ubuntu-LightItalic.ttf"
  font "Ubuntu-Medium.ttf"
  font "Ubuntu-MediumItalic.ttf"
  font "Ubuntu-Regular.ttf"

  # No zap stanza required
end
