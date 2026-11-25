cask "max-messages" do
  version "1.2.1"
  sha256 "9b7460da2fcaeb023a2369901b9f059806ab2aabbe12c4850012d2be21a1870a"

  url "https://mailarchiver.b-cdn.net/MAXMessages#{version}.dmg"
  name "MAX Messages"
  desc "Archive and browse conversations from the Messages app"
  homepage "https://www.mothsoftware.com/content/content/maxmessages.php"

  livecheck do
    url "https://www.mothsoftware.com/MessagesUpdateInformation.json"
    regex(/MAXMessages(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :ventura

  # Installed into a subfolder to match the location used by the vendor's installer
  app "MAX Messages Installer.app/Contents/Helpers/MAX Messages.app",
      target: "MAX Messages/MAX Messages.app"

  uninstall launchctl: "com.mothsoftware.messages-helper.launchd",
            quit:      "com.mothsoftware.messages*",
            rmdir:     "#{appdir}/MAX Messages"

  zap trash: [
    "~/Library/Application Support/.installation_maxmessages",
    "~/Library/Application Support/MAX Messages",
    "~/Library/Caches/com.mothsoftware.messages*",
    "~/Library/HTTPStorages/com.mothsoftware.messages*",
    "~/Library/LaunchAgents/com.mothsoftware.messages*.plist",
    "~/Library/Preferences/com.mothsoftware.messages*.plist",
    "~/Library/Saved Application State/com.mothsoftware.messages.savedState",
    "~/Library/WebKit/com.mothsoftware.messages",
  ]
end
