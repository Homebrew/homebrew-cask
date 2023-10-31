cask "loom" do
  arch arm: "-arm64"

  version "0.181.4"
  sha256 arm:   "6adb2e298aa52349a59f9b8e31b58f9b55c194f7f3d9eec6cc7df280be4479d5",
         intel: "95f3c1f8e006722f2a3a694cfb71a9247a190044854f373383e1d6acc78f6a3c"

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
