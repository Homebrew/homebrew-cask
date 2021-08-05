cask "flipper" do
  version "0.102.0"
  sha256 "c0880a800c8739fb651cc86862c4b017304f056c8a48cab2e551abb81b153d2d"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
