cask "font-fairfax-hd" do
  version "2026-05-08"
  sha256 "9e88ed905c84b2c5970c5cb85db65d1d586c18ce331b5b2ab19c29287cd45480"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/FairfaxHD.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Fairfax HD"
  homepage "https://www.kreativekorp.com/software/fonts/fairfaxhd/"

  font "FairfaxHaxHD.ttf"
  font "FairfaxHD.ttf"
  font "FairfaxPonaHD.ttf"
  font "FairfaxPulaHD.ttf"
  font "FairfaxSMHD.ttf"

  # No zap stanza required
end
