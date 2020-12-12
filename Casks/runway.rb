cask "runway" do
  version "0.16.3"
  sha256 "c5fc36cc071078aa8eef6057a5a7a53b6f90ad15654a50b61dcd53f810c1ab57"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
