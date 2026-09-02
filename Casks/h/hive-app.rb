cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.42"
  sha256 arm:   "8267a2f9ce8ebe20e1d70ab81e7d67f92d6c0c9aba98cddca572965ff86c057a",
         intel: "98abd7821dd5173219dd63bf31fc82699d05120c3d37186c95d24d379d68882d"

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
