cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.107"
  sha256 arm:   "2079b561fcf1f24c750931d8c757b235c895d20e0d08ba1edaf216e524084573",
         intel: "2c129c3c2abe555c6880d1adb7457b7e40d8ad1d43bab23fa233512f300a381c"

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
