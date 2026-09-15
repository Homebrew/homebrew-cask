cask "rclone-ui" do
  arch arm: "aarch64", intel: "x64"

  version "3.7.4"
  sha256 arm:   "e16925fe827e6fa80bf35db0e00dd99bfa9db983f24887ce0c018d1bdd2e1e74",
         intel: "1bf3b901dadf579a30b3fe0db9bd99781f081a71be9151506f381d5bde3fd79b"

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
