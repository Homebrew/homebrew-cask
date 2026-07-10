cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.15"
  sha256 arm:   "9d196fee3eb7d78ccf439b17adf84ccd44fd387d99ab22cab2cfdd938ba21346",
         intel: "a891b52a68c93a4aae83ec77e230487535a870a0492828c97260bc5ef2e1fc7a"

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
