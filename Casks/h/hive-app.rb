cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.1"
  sha256 arm:   "f2bb50dda048f2f3797a49389c44bb547520b2580f8efa46649f0c8b157fd25d",
         intel: "e4745fde3866c8dadf6374d5f6de2f2de40417743b40746254693bfdd97f8af9"

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
