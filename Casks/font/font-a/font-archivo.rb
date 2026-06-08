cask "font-archivo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/archivo"
  name "Archivo"
  homepage "https://fonts.google.com/specimen/Archivo"

  font "Archivo-Italic[wdth,wght].ttf"
  font "Archivo[wdth,wght].ttf"

  # No zap stanza required
end
