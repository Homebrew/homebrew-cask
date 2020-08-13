cask "flipper" do
  version "0.52.1"
  sha256 "e9f1a56285d1c368dc9b616e429be295f28f1e23c365747095b47b25b4ad7361"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  name "Sonar"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
