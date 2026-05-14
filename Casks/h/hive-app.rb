cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.4"
  sha256 arm:   "6c707d98a121f60e34ea2a66f29e46f4cce466772275712cbe6555f4fbbcbb70",
         intel: "e65289a7d8c09a2dc45472c065cad9750574f958c627694d313a8d5e8e73df42"

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
