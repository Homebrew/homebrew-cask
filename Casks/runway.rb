cask "runway" do
  version "0.14.3"
  sha256 "cf4c1dfe1bad82e4906f50019f81e1849f0fb50529738296ed72b148fd995cc5"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
