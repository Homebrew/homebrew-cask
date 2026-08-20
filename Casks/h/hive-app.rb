cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.37"
  sha256 arm:   "3842d7a3adffae70bd3935f50b8436415a93864d01072fd9a7a3e4ae3e264a0b",
         intel: "5871e1056412392ca793e2401559aba8c5119362ac847620fa49019d78f19e41"

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
