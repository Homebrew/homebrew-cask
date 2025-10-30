cask "algoapp" do
  version "11.1.2"
  sha256 "676a5107ad2c3cab0825a0de9e1fc1ee3f539de87f5539aef2fd702def19e08a"

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
