cask "flipper" do
  version "0.82.1"
  sha256 "656a0d9343f5268818cc1e7f63cb26b6037104955eca149a00f188b544f82912"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
