cask "flipper" do
  version "0.52.0"
  sha256 "64ffb0d8778c0129e37411537414d2612f1ee395a0180a3f615462820b46cda9"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
