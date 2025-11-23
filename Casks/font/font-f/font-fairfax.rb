cask "font-fairfax" do
  version "2025-09-01"
  sha256 "d29dd9e587e04a1633e0c1814f4edeb0aa346311efa9ef77eb77642fcaf02da8"

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
