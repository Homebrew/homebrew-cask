cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.25"
  sha256 arm:   "d32786794fa2d7e1a7fa04f0fd049d00cc3a2e8a70b870178639e7ad453a2b40",
         intel: "24a6dc7d615e4afda55b8a549fca08c3d06b9a7c08f08d7a150dcf9d2102033f"

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
