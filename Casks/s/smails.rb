cask "smails" do
  version "1.7.2"
  sha256 "6c86a73e13be398d532b1a6ee371d2e024f5399bb87001bad61b7973d66c0ee9"

  url "https://matta.io/smails/updates/Smails-#{version}.dmg"
  name "Smails"
  desc "Gmail and Outlook accounts in one window, each in its own session"
  homepage "https://matta.io/smails/"

  livecheck do
    url "https://matta.io/smails/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Smails.app"

  zap trash: [
    "~/Library/Application Scripts/com.smails.app",
    "~/Library/Containers/com.smails.app",
    "~/Library/HTTPStorages/com.smails.app",
    "~/Library/Preferences/com.smails.app.plist",
    "~/Library/Saved Application State/com.smails.app.savedState",
  ]
end
