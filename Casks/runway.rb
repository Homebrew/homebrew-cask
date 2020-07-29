cask "runway" do
  version "0.13.8"
  sha256 "1920728c5feaae7f075979f85f58e493a2d8f55b541a2cbb62beafbfa07532f6"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
