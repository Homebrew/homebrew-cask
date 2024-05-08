cask "ankiapp" do
  version "9.2.0"
  sha256 "0d3edd3aaab93e8ef1f8abdc3ae1a76ff06a98caf185a43bae908b45f8742fb0"

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
