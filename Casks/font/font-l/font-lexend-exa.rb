cask "font-lexend-exa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendexa/LexendExa%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Exa"
  homepage "https://fonts.google.com/specimen/Lexend+Exa"

  font "LexendExa[wght].ttf"

  # No zap stanza required
end
