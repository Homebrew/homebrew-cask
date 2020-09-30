cask "flipper" do
  version "0.59.0"
  sha256 "5ff9bf31b3c320ee5aedbb97c1438da56901e89fcc3b7550a093feb5410053fc"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
