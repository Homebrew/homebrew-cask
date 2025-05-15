cask "ankiapp" do
  version "10.4.0"
  sha256 "b6910dfd4bfebeeaaeebc46aa4a76572616e4902097db704a20e277d599e9c22"

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
