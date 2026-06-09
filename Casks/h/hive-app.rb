cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.20"
  sha256 arm:   "1fef8f73f518c73127e7cecf4d19499a201b0795f4f6af1eb0e9cd4a164480d0",
         intel: "7321a703db6a237c1732abf8ab311d65f7dd671494560c201339da66c110c8f0"

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
