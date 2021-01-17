cask "flipper" do
  version "0.70.0"
  sha256 "77c570fbcb6b6ba2c6f5d9b1b25ff1263bcdc5572c8b29b6c09a97dffee83f6f"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
