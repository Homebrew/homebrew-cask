cask "font-archivo-narrow" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/archivonarrow"
  name "Archivo Narrow"
  homepage "https://fonts.google.com/specimen/Archivo+Narrow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Archivo Narrow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ArchivoNarrow-Italic[wght].ttf"
  font "ArchivoNarrow[wght].ttf"

  # No zap stanza required
end
