cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.36"
  sha256 arm:   "02b4f76244419b1106e3fa5ca5026a61fd2e753ee789d7f73041df3c57c93728",
         intel: "1f8d1c79723bc234b11f265d7456db51e6b7c17cf2fda546d236b0a86dda296b"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: :monterey

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hive.app.sfl*",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
