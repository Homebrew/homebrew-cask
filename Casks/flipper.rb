cask "flipper" do
  version "0.153.0"
  sha256 "966bd0f138fed35c048bf367329bbb59d4e5a9b79194cc56152e95a277439197"

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
