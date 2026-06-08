cask "font-roboto-flex" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/robotoflex/RobotoFlex%5BGRAD%2CXOPQ%2CXTRA%2CYOPQ%2CYTAS%2CYTDE%2CYTFI%2CYTLC%2CYTUC%2Copsz%2Cslnt%2Cwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Roboto Flex"
  homepage "https://fonts.google.com/specimen/Roboto+Flex"

  font "RobotoFlex[GRAD,XOPQ,XTRA,YOPQ,YTAS,YTDE,YTFI,YTLC,YTUC,opsz,slnt,wdth,wght].ttf"

  # No zap stanza required
end
