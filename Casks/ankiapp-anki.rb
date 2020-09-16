cask "ankiapp-anki" do
  version :latest
  sha256 :no_check

  url "https://www.ankiapp.com/AnkiApp-MacOS.zip"
  name "AnkiApp"
  homepage "https://www.ankiapp.com/"

  app "AnkiApp.app"

  zap trash: [
    "~/Library/Application Support/AnkiApp",
    "~/Library/Preferences/com.electron.ankiapp.plist",
    "~/Library/Preferences/com.electron.ankiapp.helper.plist",
  ]
end
