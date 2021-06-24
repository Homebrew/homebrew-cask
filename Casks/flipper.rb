cask "flipper" do
  version "0.95.0"
  sha256 "cb21d67bd321fab3d130bae333f7e5a3d627214199891b81c51ad4e39580a293"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
