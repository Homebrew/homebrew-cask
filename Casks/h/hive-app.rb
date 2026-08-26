cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.40"
  sha256 arm:   "4f9ae976d1d9c9b77da6e769d10386b6427b020870c789cca7fc1f07d16f4f84",
         intel: "65219df22cfdd99e2ea36cd28de0c43a2ca9ef8b0fc94e7e859671d3f5aa54b0"

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
