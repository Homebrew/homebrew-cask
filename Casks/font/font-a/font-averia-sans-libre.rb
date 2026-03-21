cask "font-averia-sans-libre" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/averiasanslibre"
  name "Averia Sans Libre"
  homepage "https://fonts.google.com/specimen/Averia+Sans+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Averia Sans Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AveriaSansLibre-Bold.ttf"
  font "AveriaSansLibre-BoldItalic.ttf"
  font "AveriaSansLibre-Italic.ttf"
  font "AveriaSansLibre-Light.ttf"
  font "AveriaSansLibre-LightItalic.ttf"
  font "AveriaSansLibre-Regular.ttf"

  # No zap stanza required
end
