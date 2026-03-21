cask "font-enriqueta" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/enriqueta"
  name "Enriqueta"
  homepage "https://fonts.google.com/specimen/Enriqueta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Enriqueta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Enriqueta-Bold.ttf"
  font "Enriqueta-Medium.ttf"
  font "Enriqueta-Regular.ttf"
  font "Enriqueta-SemiBold.ttf"

  # No zap stanza required
end
