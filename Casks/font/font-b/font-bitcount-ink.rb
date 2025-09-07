cask "font-bitcount-ink" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcountink/BitcountInk%5BCRSV%2CELSH%2CELXP%2CSZP1%2CSZP2%2CXPN1%2CXPN2%2CYPN1%2CYPN2%2Cslnt%2Cwght%5D.ttf"
  name "Bitcount Ink"
  homepage "https://github.com/petrvanblokland/TYPETR-Bitcount"

  font "BitcountInk[CRSV,ELSH,ELXP,SZP1,SZP2,XPN1,XPN2,YPN1,YPN2,slnt,wght].ttf"

  # No zap stanza required
end
