cask "runway" do
  version "0.15.1"
  sha256 "a723d7f49cfaf701ef210318a5559d35ec0d89fc60237b44dd8f535c650aa889"

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
  name "Runway"
  homepage "https://runwayml.com/"

  app "Runway.app"
end
