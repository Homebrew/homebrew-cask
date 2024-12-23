cask "font-fairfax" do
  version "2024-06-01"
  sha256 "eaac64504ec44232a90677670e234c6905c05819448847fc1fa0ea44ca24a805"

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
