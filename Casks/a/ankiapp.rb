cask "ankiapp" do
  version "9.9.6"
  sha256 "8cf7e50d5e051be58c0ab403193b2cf851f993a1ba8061def9918152fc5ff3fd"

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
