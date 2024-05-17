cask "restfox" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "25c1ef76e105b74022adb636f866eca1d005d74f0ad9b88808e9877c6025dd1c",
         intel: "cd19fba8455753797a29d5f6d585a7722b63542fc5f93bb5ca8d64dc72365c89"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-#{arch}-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Restfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.restfox.sfl*",
    "~/Library/Application Support/Restfox",
    "~/Library/Caches/com.electron.restfox*",
    "~/Library/HTTPStorages/com.electron.restfox",
    "~/Library/Logs/Restfox",
    "~/Library/Preferences/ByHost/com.electron.restfox.*.plist",
    "~/Library/Preferences/com.electron.restfox.plist",
    "~/Library/Saved Application State/com.electron.restfox.savedState",
  ]
end
