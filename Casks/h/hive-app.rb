cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.34"
  sha256 arm:   "508baa5269b1e8874ed979156d8abc49a81a1606fe008eb1a79fd1744fda57b2",
         intel: "586be5c9604ada7c094879886c91109d7920b86e5a9a38e7bf2ca97a3f8c6c44"

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
