cask "font-bitcount-grid-double" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcountgriddouble/BitcountGridDouble%5BCRSV%2CELSH%2CELXP%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bitcount Grid Double"
  homepage "https://fonts.google.com/specimen/Bitcount+Grid+Double"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bitcount Grid Double",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BitcountGridDouble[CRSV,ELSH,ELXP,slnt,wght].ttf"

  # No zap stanza required
end
