cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "352ca02c9ae4124072f75d01c20b2e1a94ff51dcb5c62c926fd64d2ca3132ab9",
         intel: "93e0004c0595bf33b50db0219d58a5f6d4c2f9ecdc947a6ec7bb77c1c3ca4087"

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
