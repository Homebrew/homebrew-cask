cask "flipper" do
  version "0.96.0"
  sha256 "818927cb2232d8c264e8e10918a1df567d7a2b77686821a10088de3412196a98"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
