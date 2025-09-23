cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "65d53246ef4d8e9aad43d35e98444db4d6dad9d5a546cbcd6bf564ff6ce3c486",
         intel: "18748e9904b519d4f5c0ee5c4a5b98192271ade9403b20e59f3e503ab1ebb001"

  url "https://github.com/rclone-ui/rclone-ui/releases/download/v#{version}/Rclone.UI_#{arch}.dmg"
  name "Rclone UI"
  desc "GUI for Rclone"
  homepage "https://github.com/rclone-ui/rclone-ui"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Rclone UI.app"

  zap trash: [
    "~/Library/Application Support/com.rclone.ui",
    "~/Library/Caches/com.rclone.ui",
    "~/Library/HTTPStorages/com.rclone.ui.binarycookies",
    "~/Library/Logs/com.rclone.ui",
    "~/Library/Preferences/com.rclone.ui.plist",
    "~/Library/Saved Application State/com.rclone.ui.savedState",
    "~/Library/WebKit/com.rclone.ui",
  ]
end
