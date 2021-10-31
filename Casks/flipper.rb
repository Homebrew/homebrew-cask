cask "flipper" do
  version "0.117.0"
  sha256 "1b7952cb433be97795957dc2c7ce79218454696bac3d94ebcd48ff08615fbdf2"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
