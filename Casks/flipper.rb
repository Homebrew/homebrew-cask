cask "flipper" do
  version "0.101.0"
  sha256 "d03f3a89a5045d6ae39d0e3331bc3b2734ff21950460b66877fc4b79ef1f5da9"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
