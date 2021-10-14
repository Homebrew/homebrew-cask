cask "flipper" do
  version "0.115.0"
  sha256 "28d994630a96dca35f5d4aab603e2266830231c3a28b4ed4de55eb705a255e3b"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
