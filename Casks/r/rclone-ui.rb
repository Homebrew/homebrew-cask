cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.4"
  sha256 arm:   "2c919af519237f209caa3bed6b33a22211e52d9d8b849030b7c7cd2d032a114c",
         intel: "f71b58ab5174909daab6d5041841e431c55abd55b0eab8673672bb760fc33e63"

  url "https://github.com/rclone-ui/rclone-ui/releases/download/v#{version}/Rclone.UI_#{arch}.dmg"
  name "Rclone UI"
  desc "GUI for Rclone"
  homepage "https://github.com/rclone-ui/rclone-ui"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

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
