cask "flipper" do
  version "0.108.0"
  sha256 "2812a1df586b5abd7938341beb29a98365b72b2821210caa44f114a2ec40e52c"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
