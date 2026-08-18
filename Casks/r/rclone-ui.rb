cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.2"
  sha256 arm:   "f54b7b1f3dfb80ca3c987e44ba483ae689636bdcc2f4bc3e740cde0a0b09fd0f",
         intel: "4bfdf765fefceb73123d8b7875ba4b2fc3a84c05128735daf92b9eb0433e0532"

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
