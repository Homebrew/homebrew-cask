cask "runway" do
  version "0.16.2"
  sha256 "2d96dd0e43c1d66e1b184f427331c7e53ef8110b16074b87998dfe8cea37163e"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
