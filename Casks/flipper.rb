cask "flipper" do
  version "0.107.0"
  sha256 "5170db989088f0987498e93bf0643c898e42237a6ac721fbb15f3e716f74e779"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
