cask "font-scada" do
  version "4.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/scada"
  name "Scada"
  homepage "https://fonts.google.com/specimen/Scada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Scada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Scada-Bold.ttf"
  font "Scada-BoldItalic.ttf"
  font "Scada-Italic.ttf"
  font "Scada-Regular.ttf"

  # No zap stanza required
end
