cask "font-noto-serif-kannada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkannada/NotoSerifKannada%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Kannada"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Kannada"

  font "NotoSerifKannada[wght].ttf"

  # No zap stanza required
end
