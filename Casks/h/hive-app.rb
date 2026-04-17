cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.117"
  sha256 arm:   "6ea70e70d2297c85f791248813efeb2ead0ffc3ad32a95d431bd463533765cfb",
         intel: "b8df08e4bbbe8f0734e271a1d801ae4f3d3c31ea0c39bbe8b7c8fd9b1a9a518d"

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
