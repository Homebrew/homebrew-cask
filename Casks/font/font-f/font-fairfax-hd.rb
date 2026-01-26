cask "font-fairfax-hd" do
  version "2025-09-01"
  sha256 "85ebff7ad2c2347cbe619cacc9f9e6d2fdba30130441b53e0c7d975f5f6f2a4c"

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
