cask "font-fairfax" do
  version "2026-02-08"
  sha256 "9b94b7411ddd3fba67f49df080d0ced30ca692c9ac2ef7b9595c7a769a7bb592"

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
