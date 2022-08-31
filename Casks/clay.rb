cask "clay" do
  arch arm: "-arm64"

  version "1.10.0"
  sha256 arm:   "5ff0142d0f2ffd8a7b2081731c801156979893c809e6f245e2f54c896df4021a",
         intel: "ac6a6155e1304b7efcf5fefa80e3778026763be69361c52c9386ec3530e00822"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}#{arch}.dmg"
  name "clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
