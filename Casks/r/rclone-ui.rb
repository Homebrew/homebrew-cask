cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.3"
  sha256 arm:   "255ca6dc5bb8bd46f622b35f2332f34dd53021142942c379b1ccb642ac805a44",
         intel: "672af2a9fa1a04424d90cf58d669e9ce4ffc1ae83c6c9d3e778c6062c6589a42"

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
