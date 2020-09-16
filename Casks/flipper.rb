cask "flipper" do
  version "0.57.0"
  sha256 "adef94d3235a2f464f4518f6c991da24ddcb029851c68034ebe14e9d7e65f3c9"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
