cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.12"
  sha256 arm:   "91960040acb7d52fc5320a21fb216565de54e092ce8f369c40e8f5a4ff13d378",
         intel: "24b66820fbd2039df54dd167a6cdca98f28f67d5740091cdd54467cb75b13164"

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
