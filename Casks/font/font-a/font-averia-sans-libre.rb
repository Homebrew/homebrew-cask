cask "font-averia-sans-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/averiasanslibre"
  name "Averia Sans Libre"
  homepage "https://fonts.google.com/specimen/Averia+Sans+Libre"

  font "AveriaSansLibre-Bold.ttf"
  font "AveriaSansLibre-BoldItalic.ttf"
  font "AveriaSansLibre-Italic.ttf"
  font "AveriaSansLibre-Light.ttf"
  font "AveriaSansLibre-LightItalic.ttf"
  font "AveriaSansLibre-Regular.ttf"

  # No zap stanza required
end
