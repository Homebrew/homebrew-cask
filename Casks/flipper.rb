cask "flipper" do
  version "0.84.0"
  sha256 "a1f7a38db158dbd9944e33f1c05c9e7ea1f24bab1063240465e9a221aa4c0822"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
