cask "runway" do
  version "0.16.1"
  sha256 "90b49bfa1284e7e31b6560a9e323e177368b23e15787590a8099c44f5e8a438c"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
