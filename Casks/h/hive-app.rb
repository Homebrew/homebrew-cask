cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.41"
  sha256 arm:   "ed16f28f7d5110447749f9ca1c0a9d4b76de4b10e057bb180c1392da8136e736",
         intel: "f5d4e077fb1df2ed7a59c20b5e8770352721b1925839e221426c79e363178940"

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
