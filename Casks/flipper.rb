cask "flipper" do
  version "0.90.2"
  sha256 "c65a398ea865c463b5f7c193873486a45bf37baec219b825bcfd3c39bdd86e22"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
