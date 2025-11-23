cask "font-enriqueta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/enriqueta"
  name "Enriqueta"
  homepage "https://fonts.google.com/specimen/Enriqueta"

  font "Enriqueta-Bold.ttf"
  font "Enriqueta-Medium.ttf"
  font "Enriqueta-Regular.ttf"
  font "Enriqueta-SemiBold.ttf"

  # No zap stanza required
end
