cask "flipper" do
  version "0.141.0"
  sha256 "7241ce8e9a0fa25176d4c35c95fd12ddf68dbd741e832f543eba034a221941f0"

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
