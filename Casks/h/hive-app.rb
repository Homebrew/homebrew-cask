cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.28"
  sha256 arm:   "28a7895ef90b664ac4eb39a428405f6da91f40c350b0fe6f27cb37ed6bcc76d1",
         intel: "f6f20d95ab03f28c23fd0618202e3e2a9d8425d16263a5e40882f476878b9341"

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
