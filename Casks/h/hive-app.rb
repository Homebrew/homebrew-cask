cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.27"
  sha256 arm:   "5749bfac1735b3c6167e2318bca2181503ff32521327e1f6b90a13f8a0fe9c08",
         intel: "6bc8f9b47991d051ea696426857cf06adb3f18b841bddd6fa57b1b7b462ec9bc"

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
