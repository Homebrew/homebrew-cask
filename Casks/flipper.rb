cask "flipper" do
  version "0.99.0"
  sha256 "40e1c34becd36130494c0a131120353f7de077a1596421bfb7fc5384a76e07ab"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
