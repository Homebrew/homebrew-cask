cask "font-fairfax-hd" do
  version "2026-02-08"
  sha256 "b8a2b6177ac4a68703e1d752b6e7ccbd1cf75eeb020671b874cd6b7b9677b1af"

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
