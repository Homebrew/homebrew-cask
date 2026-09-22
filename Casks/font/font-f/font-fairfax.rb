cask "font-fairfax" do
  version "2026-09-21"
  sha256 "23366ad44436f0b9ef0e557a47bc4f5a7976088e374d987b69479d0fd608f527"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/Fairfax.zip"
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
  font "FairfaxSM.ttf"
  font "FairfaxSMBold.ttf"
  font "FairfaxSMItalic.ttf"
  font "FairfaxSerif.ttf"
  font "FairfaxSerifHax.ttf"
  font "FairfaxSerifSM.ttf"

  # No zap stanza required
end
