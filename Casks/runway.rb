cask "runway" do
  version "0.14.1"
  sha256 "7d246c1736ffdc164d7ab4413bc37d42220aac7c789b355d05df7a351e7d9ec2"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
