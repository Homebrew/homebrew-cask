cask "font-gabarito" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gabarito/Gabarito%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Gabarito"
  homepage "https://fonts.google.com/specimen/Gabarito"

  font "Gabarito[wght].ttf"

  # No zap stanza required
end
