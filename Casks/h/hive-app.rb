cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.23"
  sha256 arm:   "815662cd7f404e8b68f8f429f0abbb35cc2cfc952c7de86b453fe8c0f04700c4",
         intel: "50880ca275483a3789d867259082f17c6e7effb124c17b985727d6ab41bb2851"

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
