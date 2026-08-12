cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.30"
  sha256 arm:   "ff402bfec1bd47bb4d579d10887abf54deef656bac2985417a033bac3323caf5",
         intel: "f92260a6be748e8f39910e2c746a18040027d2339ac9392a5d7f1b59e19dfc3a"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: :monterey

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hive.app.sfl*",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
