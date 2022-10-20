cask "sonic-robo-blast-2-kart" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.5"
  sha256 "6629e82d3d8970848a2c2ef2e7f73f70af40731ee6181b6eb21c6ba32fd30045"

  url "https://github.com/STJr/Kart-Public/releases/download/v#{version}/SRB2Kart-#{version}-Darwin.dmg",
      verified: "github.com/STJr/Kart-Public/"
  name "Sonic Robo Blast 2 Kart"
  desc "Classic styled kart racer, complete with beautiful courses, and wacky items"
  homepage "https://mb.srb2.org/addons/srb2kart.2435/"

  app "Sonic Robo Blast 2 Kart.app"

  zap trash: "~/srb2kart"
end
