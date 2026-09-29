cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.48"
  sha256 arm:   "d7d0edfe9e4cf9136af5ba3aa0a07e806fa8b20b4ceeb38ee02e7ec4a8573c58",
         intel: "041fb67e56e44a6391ed83ba12dd0e2d8d8b35146737024aac3af9582dea6c08"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  livecheck do
    url :url
    strategy :github_latest
  end

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
