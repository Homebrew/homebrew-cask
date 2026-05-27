cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.12"
  sha256 arm:   "29cd3292c075f1148ae24d5cc58f7c7a9d1451c0d49e32b9d1b9119829fc5323",
         intel: "0ac4f38de28a3192bbae1a9f189d4ea874c09058e66c6e0678b6ad5b47cf3557"

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
