cask "runway" do
  version "0.14.2"
  sha256 "b7a8bf8c86917ef4d3b7628da1c6a11d2e99784e2efd258c2d299e996bb4115e"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
