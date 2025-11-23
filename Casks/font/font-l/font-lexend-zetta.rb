cask "font-lexend-zetta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendzetta/LexendZetta%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Zetta"
  homepage "https://fonts.google.com/specimen/Lexend+Zetta"

  font "LexendZetta[wght].ttf"

  # No zap stanza required
end
