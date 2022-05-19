cask "flipper" do
  version "0.146.0"
  sha256 "77e09e856b9a1488006e7bc91b7c512303b406de4d615b36ec1e5b2d3ee320d8"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"

  zap trash: [
    "~/.flipper",
    "~/Library/Application Support/Flipper",
    "~/Library/Preferences/rs.flipper-launcher",
  ]
end
