cask "flipper" do
  version "0.100.0"
  sha256 "7318578f93ecd9cbae516c5c026fd762fbc4b2135d04f43d5563056a9b2fc063"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
