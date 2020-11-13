cask "runway" do
  version "0.15.0"
  sha256 "c3e550ab7534708727df2396da3fdcb8f44e6aabce0ea170c343ea2c85e65a98"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
