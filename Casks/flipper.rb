cask "flipper" do
  version "0.87.0"
  sha256 "7e7ca5cc452adeb04bec023cf347847d78090c90e93a16e3d46f0e9ba9f14c9f"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
