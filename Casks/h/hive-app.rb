cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.38"
  sha256 arm:   "11d5bc6fa5efb88be443426708ad20b883f1f311b08a453875e004e7b7eeae59",
         intel: "d594c7792fa95047d5a4d7923895814bc6c49d116044adffc332fba6b8279b3b"

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
