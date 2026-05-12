cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.3"
  sha256 arm:   "d4aef19b5d9fafe1b7107baab3ba04be3c7389e49b8e1daf5efa5de40b62daed",
         intel: "686458ec1cdaee6546e8fe522d033a61d6bc79c2c936872c25365540af94bb30"

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
