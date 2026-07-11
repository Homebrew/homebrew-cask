cask "algoapp" do
  version "13.3.1"
  sha256 :no_check

  url "https://static.algoapp.ai/AlgoApp-MacOS.zip"
  name "AlgoApp"
  desc "Spaced Repetition Flashcard App"
  homepage "https://www.algoapp.ai/"

  livecheck do
    # The app checks https://updates.algoapp.ai/latest-mac.yml but it currently returns 404.
    url :url
    strategy :extract_plist
  end

  depends_on macos: :monterey

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
