cask "font-archivo" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/archivo"
  name "Archivo"
  homepage "https://fonts.google.com/specimen/Archivo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Archivo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Archivo-Italic[wdth,wght].ttf"
  font "Archivo[wdth,wght].ttf"

  # No zap stanza required
end
