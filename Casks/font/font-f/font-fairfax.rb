cask "font-fairfax" do
  version "2026-05-08"
  sha256 "0548fcc085922276951af7af524a2b190e710edd1fa7860de6bfd0bc435b1c5e"

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
