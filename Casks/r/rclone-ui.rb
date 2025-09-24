cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "52d577bf888a0de64f574e6f4e09814c07356e6c1d8de4ccfd1115ca90d6bac6",
         intel: "a457c34b276b492e710cc2709a1cd0378bd6bf13b5fb5e5862b933693dcde709"

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
