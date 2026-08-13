cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.31"
  sha256 arm:   "656b1a2e17c0b6539b1d39afa6b2a8f92511c6ba6d4ba5baa9c28c623d160bd4",
         intel: "a131a22fffbd13f8043a0176dcf9f33375847e510f756445b3e7a95617341b45"

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
