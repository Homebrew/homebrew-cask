cask "runway" do
  version "0.14.4"
  sha256 "0c1c5b3d14ae1bf4b7bd61dd4474feffefb3c185e900bf519d34f230866d886f"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
