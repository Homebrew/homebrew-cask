cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.23"
  sha256 arm:   "7784762d2783f8b346bdcbb29933151fe88307be337c8e5e25f6738aa4d1a2ba",
         intel: "243c8d5e30b04b9f953add0ca016bec77df9d25d6b4127cc9336fcf0fdc516e4"

  url "https://github.com/rclone-ui/rclone-ui/releases/download/v#{version}/Rclone.UI_#{arch}.dmg"
  name "Rclone UI"
  desc "GUI for Rclone"
  homepage "https://github.com/rclone-ui/rclone-ui"

  livecheck do
    url :url
    strategy :github_latest
  end

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
