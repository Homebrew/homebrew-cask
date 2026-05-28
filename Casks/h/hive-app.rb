cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.14"
  sha256 arm:   "8a0d451005996d1f65d6a211e2efc72b6acce6685c2eee8cc0e8fc353175016c",
         intel: "ac6bf95044f9f440c1b3bb4c3d9bff1ffd7db0e2a3be715f8fc3150d446a29e7"

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
