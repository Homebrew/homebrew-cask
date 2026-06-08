cask "font-cormorant-infant" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantinfant"
  name "Cormorant Infant"
  homepage "https://fonts.google.com/specimen/Cormorant+Infant"

  font "CormorantInfant-Italic[wght].ttf"
  font "CormorantInfant[wght].ttf"

  # No zap stanza required
end
