cask "font-bitcount-grid-double" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcountgriddouble/BitcountGridDouble%5BCRSV%2CELSH%2CELXP%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bitcount Grid Double"
  homepage "https://fonts.google.com/specimen/Bitcount+Grid+Double"

  font "BitcountGridDouble[CRSV,ELSH,ELXP,slnt,wght].ttf"

  # No zap stanza required
end
