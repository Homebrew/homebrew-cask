cask "font-archivo-narrow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/archivonarrow"
  name "Archivo Narrow"
  homepage "https://fonts.google.com/specimen/Archivo+Narrow"

  font "ArchivoNarrow-Italic[wght].ttf"
  font "ArchivoNarrow[wght].ttf"

  # No zap stanza required
end
