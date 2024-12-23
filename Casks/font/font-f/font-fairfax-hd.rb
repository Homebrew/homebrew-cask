cask "font-fairfax-hd" do
  version "2024-06-01"
  sha256 "755daa19c04df49d351c7193ec49f62cacd9c172c435de258d71db9960bd8c91"

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
