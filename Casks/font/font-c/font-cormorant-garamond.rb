cask "font-cormorant-garamond" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantgaramond"
  name "Cormorant Garamond"
  homepage "https://fonts.google.com/specimen/Cormorant+Garamond"

  font "CormorantGaramond-Italic[wght].ttf"
  font "CormorantGaramond[wght].ttf"

  # No zap stanza required
end
