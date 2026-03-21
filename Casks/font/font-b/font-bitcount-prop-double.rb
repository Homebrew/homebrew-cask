cask "font-bitcount-prop-double" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bitcountpropdouble/BitcountPropDouble%5BCRSV%2CELSH%2CELXP%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bitcount Prop Double"
  homepage "https://fonts.google.com/specimen/Bitcount+Prop+Double"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bitcount Prop Double",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BitcountPropDouble[CRSV,ELSH,ELXP,slnt,wght].ttf"

  # No zap stanza required
end
