cask "font-bitcount-single" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcountsingle/BitcountSingle%5BCRSV%2CELSH%2CELXP%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bitcount Single"
  homepage "https://fonts.google.com/specimen/Bitcount+Single"

  font "BitcountSingle[CRSV,ELSH,ELXP,slnt,wght].ttf"

  # No zap stanza required
end
