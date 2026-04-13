cask "font-fairfax" do
  version "2026-04-12"
  sha256 "3047def427b2e95ad9d33d65970e02c91c51f55e971988e2bbf8614904121213"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/Fairfax.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Fairfax"
  homepage "https://www.kreativekorp.com/software/fonts/fairfax/"

  font "Fairfax.ttf"
  font "FairfaxBold.ttf"
  font "FairfaxHax.ttf"
  font "FairfaxHaxBold.ttf"
  font "FairfaxHaxItalic.ttf"
  font "FairfaxItalic.ttf"
  font "FairfaxPona.ttf"
  font "FairfaxPula.ttf"
  font "FairfaxSerif.ttf"
  font "FairfaxSerifHax.ttf"
  font "FairfaxSerifSM.ttf"
  font "FairfaxSM.ttf"
  font "FairfaxSMBold.ttf"
  font "FairfaxSMItalic.ttf"

  # No zap stanza required
end
