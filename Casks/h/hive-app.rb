cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.24"
  sha256 arm:   "6b4d9997877ca49710b2a3c654f95c1075afcc4a49fe45276340846b4c4d0f42",
         intel: "4090783795618b5c35424510d776e33aa02a53b604294d5a67f5a17687cd2785"

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
