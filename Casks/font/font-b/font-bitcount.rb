cask "font-bitcount" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcount/Bitcount%5BCRSV%2CELSH%2CELXP%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bitcount"
  homepage "https://fonts.google.com/specimen/Bitcount"

  font "Bitcount[CRSV,ELSH,ELXP,slnt,wght].ttf"

  # No zap stanza required
end
