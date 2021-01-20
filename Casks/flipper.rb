cask "flipper" do
  version "0.72.0"
  sha256 "3834e192a8c2603cb407897849234d802a88d2ce222941ce6cc0f6618c7bb28b"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
