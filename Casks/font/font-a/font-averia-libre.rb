cask "font-averia-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/averialibre"
  name "Averia Libre"
  homepage "https://fonts.google.com/specimen/Averia+Libre"

  font "AveriaLibre-Bold.ttf"
  font "AveriaLibre-BoldItalic.ttf"
  font "AveriaLibre-Italic.ttf"
  font "AveriaLibre-Light.ttf"
  font "AveriaLibre-LightItalic.ttf"
  font "AveriaLibre-Regular.ttf"

  # No zap stanza required
end
