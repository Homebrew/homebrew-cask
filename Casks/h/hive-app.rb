cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.123"
  sha256 arm:   "538f5d5e03d2713f854c302a1eee127988963a99fa791897e620648aae06b9ee",
         intel: "7dd91a5570a89c339609ae2061780ceb3f685e7de0a9484cf2d8f575aa07b726"

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
