cask "flipper" do
  version "0.66.0"
  sha256 "fcbc12f5fa11b5fb41bcb1aec00af7e4db93692fb6d5554a46cb59cf5fbbeabc"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
