cask "flipper" do
  version "0.92.0"
  sha256 "dcf369ddd451d0cecfd1a8239362e6868e8fecb75c364f5a042e6098a9cc8eca"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
