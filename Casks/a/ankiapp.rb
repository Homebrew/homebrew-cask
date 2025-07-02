cask "ankiapp" do
  version "10.8.0"
  sha256 "d8130ff2d113f7924fdaa58151323c7f93098cfbc53029f21b1bdb1aa91c0003"

  url "https://updates.ankiapp.com/AnkiApp-#{version}-universal-mac.zip"
  name "AnkiApp"
  desc "Spaced Repetition Flashcard App"
  homepage "https://www.ankiapp.com/"

  livecheck do
    url "https://updates.ankiapp.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "AnkiApp.app"

  zap trash: [
    "~/Library/Application Support/AnkiApp",
    "~/Library/Logs/AnkiApp",
    "~/Library/Preferences/com.ankiapp.mac-client.plist",
    "~/Library/Preferences/com.electron.ankiapp.helper.plist",
    "~/Library/Preferences/com.electron.ankiapp.plist",
  ]
end
