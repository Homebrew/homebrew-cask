cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.5"
  sha256 arm:   "e8e7e11e30fd4634f2aa11ee5291f7cae0adeb71612fd1d3ae0d066eb4e12610",
         intel: "62232802a28deb7cd0ea7ba885d83eb02b4598f5c64fca7e85e4e3ddcc068d44"

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
