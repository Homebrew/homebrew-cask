cask "loom" do
  arch arm: "-arm64"

  version "0.198.5"
  sha256 arm:   "bfba6d3becaa1b5d4262e60503bc20021c256dc01997ba78e939e2dc57b14c43",
         intel: "53eee2fc04f0fed4dce190fbcd6e5bb4abc1ba9958e1770fb788a9176a5d8522"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
