cask "font-inria-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inriasans"
  name "Inria Sans"
  homepage "https://fonts.google.com/specimen/Inria+Sans"

  font "InriaSans-Bold.ttf"
  font "InriaSans-BoldItalic.ttf"
  font "InriaSans-Italic.ttf"
  font "InriaSans-Light.ttf"
  font "InriaSans-LightItalic.ttf"
  font "InriaSans-Regular.ttf"

  # No zap stanza required
end
