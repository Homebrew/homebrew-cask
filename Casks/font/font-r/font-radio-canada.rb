cask "font-radio-canada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/radiocanada"
  name "Radio Canada"
  homepage "https://fonts.google.com/specimen/Radio+Canada"

  font "RadioCanada-Italic[wdth,wght].ttf"
  font "RadioCanada[wdth,wght].ttf"

  # No zap stanza required
end
