cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.1"
  sha256 arm:   "4ee593b988fe02aabcfde9ed9a24866f604c9b6c50c00d44e14cfd8c620ff75f",
         intel: "02ca932e43008b3f82d4a4c129ce60d05c3be220a80b259283e6ad824bcadec2"

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
