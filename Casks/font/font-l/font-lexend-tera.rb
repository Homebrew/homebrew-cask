cask "font-lexend-tera" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendtera/LexendTera%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Tera"
  homepage "https://fonts.google.com/specimen/Lexend+Tera"

  font "LexendTera[wght].ttf"

  # No zap stanza required
end
