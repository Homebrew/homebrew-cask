cask "algoapp" do
  version "11.1.3"
  sha256 "7246ad36c93c4cd5e5fd0b654f7c29d89632b09da0a1e2794f1c953319ed3e9a"

  url "https://updates.ankiapp.com/AlgoApp-#{version}-universal.dmg"
  name "AlgoApp"
  desc "Spaced Repetition Flashcard App"
  homepage "https://www.ankiapp.com/"

  livecheck do
    url "https://updates.ankiapp.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "AlgoApp.app"

  zap trash: [
    "~/Library/Application Support/AlgoApp",
    "~/Library/Application Support/AnkiApp",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ankiapp.mac-client.sfl*",
    "~/Library/Logs/AlgoApp",
    "~/Library/Logs/AnkiApp",
    "~/Library/Preferences/com.ankiapp.mac-client.plist",
    "~/Library/Preferences/com.electron.ankiapp.helper.plist",
    "~/Library/Preferences/com.electron.ankiapp.plist",
  ]
end
