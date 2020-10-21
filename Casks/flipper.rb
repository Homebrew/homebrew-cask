cask "flipper" do
  version "0.62.0"
  sha256 "f338ed71b4c3182febb40ce3e5bf0dbbec44ddf4c73e99e1e617ae0dd706ad06"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
