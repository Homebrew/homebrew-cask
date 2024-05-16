cask "font-nabla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nabla/Nabla%5BEDPT%2CEHLT%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Nabla"
  desc "Color font inspired by isometric computer games, built using the colrv1 format"
  homepage "https://fonts.google.com/specimen/Nabla"

  font "Nabla[EDPT,EHLT].ttf"

  # No zap stanza required
end
