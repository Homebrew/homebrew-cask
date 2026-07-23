cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.22"
  sha256 arm:   "92b9a7d449310c3cabe64e3ba99bb5cb8efa66a759dc49220bbbf09ffcf2f0e2",
         intel: "174dee8ff18baa803f6799099b9dcdb2f272e23dd0161da39148d58cbab30dd1"

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
