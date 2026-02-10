cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.4.1"
  sha256 arm:   "092412f52b01ce1f73e3fd8be74764c9118f2db5e64dc079c1b3a1c1470ed169",
         intel: "ef5a69f88bd8efb1fa35fc625d615b5833720be9adfccd896f8b2256e693985b"

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
