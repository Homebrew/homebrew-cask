cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.118"
  sha256 arm:   "bc101d9c2dd3ec50bb45c66ba193f464f6072c5f17ddf4a5af0da570e92d901d",
         intel: "d08e33ee46aa1a7aeb8e8db2e7075ff0f61843719b1b05343425f41c91a1e96c"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
