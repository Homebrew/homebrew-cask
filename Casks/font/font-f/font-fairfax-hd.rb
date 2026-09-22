cask "font-fairfax-hd" do
  version "2026-09-21"
  sha256 "7e07da22f39c5f31f9a08aa71fbf13f144ce6c20d4c2ee7cf8eca9cd188b759f"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/FairfaxHD.zip"
  name "Fairfax HD"
  homepage "https://www.kreativekorp.com/software/fonts/fairfaxhd/"

  font "FairfaxHD.ttf"
  font "FairfaxHaxHD.ttf"
  font "FairfaxPonaHD.ttf"
  font "FairfaxPulaHD.ttf"
  font "FairfaxSMHD.ttf"

  # No zap stanza required
end
