cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.6"
  sha256 arm:   "e5d5511b4c93ac56f6ecf6122082c482f204e980547f9e49a04515d4c5591f30",
         intel: "996daa0e43b3c23d43c34e2ea68dcc842349625b219c790d815cf4de04337fc1"

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
