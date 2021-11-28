cask "flipper" do
  version "0.120.0"
  sha256 "e3b7d47ab685e69b03a0c2678e1b0cec369e9fbb1bd6051caa97657ea5e20ea4"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
