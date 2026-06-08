cask "font-lexend-peta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendpeta/LexendPeta%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Peta"
  homepage "https://fonts.google.com/specimen/Lexend+Peta"

  font "LexendPeta[wght].ttf"

  # No zap stanza required
end
