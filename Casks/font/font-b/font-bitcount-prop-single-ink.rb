cask "font-bitcount-prop-single-ink" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcountpropsingleink/BitcountPropSingleInk%5BCRSV%2CELSH%2CELXP%2CSZP1%2CSZP2%2CXPN1%2CXPN2%2CYPN1%2CYPN2%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bitcount Prop Single Ink"
  homepage "https://fonts.google.com/specimen/Bitcount+Prop+Single+Ink"

  font "BitcountPropSingleInk[CRSV,ELSH,ELXP,SZP1,SZP2,XPN1,XPN2,YPN1,YPN2,slnt,wght].ttf"

  # No zap stanza required
end
