cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.33"
  sha256 arm:   "81b34c4da28026d5b8d5473ff89edbfd8d3f6cdbc11f2f503bb509c7d9f78406",
         intel: "6c7c0ba11d4a609a324ab0b1c63d5d933da0d75221bad39bd9075fb11086124f"

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
