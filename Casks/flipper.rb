cask "flipper" do
  version "0.60.0"
  sha256 "8e6b3902bdf7479d6a7c2e60574b2bc7b742caaa0ce27b2fcb866c6516428ab2"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
