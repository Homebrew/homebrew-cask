cask "font-averia-serif-libre" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/averiaseriflibre"
  name "Averia Serif Libre"
  homepage "https://fonts.google.com/specimen/Averia+Serif+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Averia Serif Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AveriaSerifLibre-Bold.ttf"
  font "AveriaSerifLibre-BoldItalic.ttf"
  font "AveriaSerifLibre-Italic.ttf"
  font "AveriaSerifLibre-Light.ttf"
  font "AveriaSerifLibre-LightItalic.ttf"
  font "AveriaSerifLibre-Regular.ttf"

  # No zap stanza required
end
