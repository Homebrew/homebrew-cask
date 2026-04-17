cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.116"
  sha256 arm:   "28941d97b7d1433104b419ef45b61367f0413c6514b1bac379afdef29878c7f8",
         intel: "638ed2c4cd82883335c0225ea820e0b685c6c8b27b0a937fc9a0ca430f946169"

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
