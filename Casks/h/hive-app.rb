cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.8"
  sha256 arm:   "e0a059dc2cb6a3293ee43525359a1c20aff9c10d0d5ca7f2b062b1126ea9117d",
         intel: "74f05cc2d290b56665cacba880b184d7dc516cf6645f2ac97b3c62aaef08138a"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: :monterey

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
