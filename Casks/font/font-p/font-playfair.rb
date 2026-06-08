cask "font-playfair" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playfair"
  name "Playfair"
  homepage "https://fonts.google.com/specimen/Playfair"

  font "Playfair-Italic[opsz,wdth,wght].ttf"
  font "Playfair[opsz,wdth,wght].ttf"

  # No zap stanza required
end
