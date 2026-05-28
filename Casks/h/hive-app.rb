cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.16"
  sha256 arm:   "2f7693d92f9887625ef827604e7091ab623532a2521bc659c5d32e9e1d64e3b1",
         intel: "dfe0c7407a689d04e4e3ca853abc31ce7a141b669ae548d1e85a6ebdde020520"

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
