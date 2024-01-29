cask "loom" do
  arch arm: "-arm64"

  version "0.198.4"
  sha256 arm:   "6616239460ba9d2f26ece3c4e782d0bd3466f8a6151d12d44c43a32a9f046612",
         intel: "719579dcaa7067c5381b57b8486d366696b9006efafdefb412f8d4811a1554ae"

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
