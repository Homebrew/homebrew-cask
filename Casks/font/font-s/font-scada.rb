cask "font-scada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/scada"
  name "Scada"
  homepage "https://fonts.google.com/specimen/Scada"

  font "Scada-Bold.ttf"
  font "Scada-BoldItalic.ttf"
  font "Scada-Italic.ttf"
  font "Scada-Regular.ttf"

  # No zap stanza required
end
