cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "bb936899dd0b420c518b7fe1e0df34fd363b01cfe4006a56f0d5f4b2dc4dcdfd",
         intel: "bd5bbf7c02832c40a211588c01914921edaa7bd02b0fd1b9e1ebd93a808a8483"

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
