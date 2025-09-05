cask "algoapp" do
  version "11.0.2"
  sha256 "cfd03b1ee9908c816b531a4074a39802e94d92f5eb37b24e376efcebcd8fa3f6"

  url "https://updates.ankiapp.com/AlgoApp-#{version}-universal.dmg"
  name "AlgoApp"
  desc "Spaced Repetition Flashcard App"
  homepage "https://www.ankiapp.com/"

  livecheck do
    url "https://updates.ankiapp.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
