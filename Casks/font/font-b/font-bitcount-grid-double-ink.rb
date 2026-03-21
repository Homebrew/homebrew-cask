cask "font-bitcount-grid-double-ink" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcountgriddoubleink/BitcountGridDoubleInk%5BCRSV%2CELSH%2CELXP%2CSZP1%2CSZP2%2CXPN1%2CXPN2%2CYPN1%2CYPN2%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bitcount Grid Double Ink"
  homepage "https://fonts.google.com/specimen/Bitcount+Grid+Double+Ink"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bitcount Grid Double Ink",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BitcountGridDoubleInk[CRSV,ELSH,ELXP,SZP1,SZP2,XPN1,XPN2,YPN1,YPN2,slnt,wght].ttf"

  # No zap stanza required
end
