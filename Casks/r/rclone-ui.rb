cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.5"
  sha256 arm:   "0fe8367034b14a9ed28a4fedfd1cda17c75c3a531ac159ef6eb0ea92f9ae500b",
         intel: "3322e9dc7c0d704cd7234ddf43b8ffcc631250e57110d067f15d591fb925989d"

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

  uninstall quit: "com.rclone.ui"

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
