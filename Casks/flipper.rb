cask "flipper" do
  version "0.125.0"
  sha256 "6e6a388275531d36f8087532e3d28e2a41ddb8263d49de1021a3aaf5f922bcc9"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
