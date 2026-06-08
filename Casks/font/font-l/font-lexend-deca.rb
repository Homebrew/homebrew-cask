cask "font-lexend-deca" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexenddeca/LexendDeca%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Deca"
  homepage "https://fonts.google.com/specimen/Lexend+Deca"

  font "LexendDeca[wght].ttf"

  # No zap stanza required
end
