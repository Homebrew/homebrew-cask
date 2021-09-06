cask "flipper" do
  version "0.105.0"
  sha256 "390612f009843e22d8f4da3fa7a3f8cabbd32e2dc19e9a6eb7876ee26104ce35"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
