cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.121"
  sha256 arm:   "0ddfe97693c3f911db1665a49de99ad720ed8654d1dc4f7832e279b1c7274140",
         intel: "9e3a813c9928e7e13e4ba74ede3f1d6e7c9d3a188b238d4740acdde41ebf4a3a"

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
