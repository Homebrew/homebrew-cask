cask "flipper" do
  version "0.85.0"
  sha256 "b4bcf60b4cc70b6f198a8cf506d95815698552e8d0e9bc091dd714039380a591"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
