cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "7c2091a3181995391aa417bda8c808108f8ebeea2d9fe7bb0a7c4ba4e2d64f80",
         intel: "f9e147bc374b6f079bfd814a6308fc9b5af4fbd85a79a0be10a97999e1cf3e2b"

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
