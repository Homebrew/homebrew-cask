cask "font-geologica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/geologica/Geologica%5BCRSV%2CSHRP%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Geologica"
  homepage "https://fonts.google.com/specimen/Geologica"

  font "Geologica[CRSV,SHRP,slnt,wght].ttf"

  # No zap stanza required
end
