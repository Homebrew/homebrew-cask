cask "flipper" do
  version "0.151.1"
  sha256 "31cfb48f3b61abf18b64f621c9f452c669b677f52dd6d0e72d31be4f24e19267"

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
