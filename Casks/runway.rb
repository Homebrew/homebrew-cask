cask "runway" do
  version "0.15.2"
  sha256 "93fd4f7051ee51f8dd3a68fed4bb8ff30dfb23cc9ae487adde99eeefd56f78de"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
