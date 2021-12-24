cask "flipper" do
  version "0.127.0"
  sha256 "efa5e775ec16bb8d13584931744a74d12ab5c482b46b9d8c0792f5933c682ed9"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
