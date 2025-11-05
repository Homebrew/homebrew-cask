cask "algoapp" do
  version "11.1.4"
  sha256 "154bf22ecf00f812049a15e06aa2d236ff1092ce5714b8b4383e1c78a55064d0"

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
