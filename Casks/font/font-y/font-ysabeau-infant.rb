cask "font-ysabeau-infant" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ysabeauinfant"
  name "Ysabeau Infant"
  homepage "https://fonts.google.com/specimen/Ysabeau+Infant"

  font "YsabeauInfant-Italic[wght].ttf"
  font "YsabeauInfant[wght].ttf"

  # No zap stanza required
end
