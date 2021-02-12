cask "flipper" do
  version "0.75.1"
  sha256 "d823efae11ebd2d75cc1023909168babe8ce404aa20c1f87735c757a8d7f1950"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
