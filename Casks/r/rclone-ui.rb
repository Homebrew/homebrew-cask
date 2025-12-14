cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "a89952cf52fd42341a0ca33c3ecf85500144f38d6e732dced06b06bc4ccd2eb6",
         intel: "c820f8a75a0b61c4e370a05b962c4787933635aa8bdd568dea975872bb439f50"

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
