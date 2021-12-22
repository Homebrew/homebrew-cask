cask "flipper" do
  version "0.126.0"
  sha256 "10405650f177ceeabd25b32bfa7083986c347082405b17f8f9d4fb5b0b68c49e"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
