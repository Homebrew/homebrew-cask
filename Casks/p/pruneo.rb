cask "pruneo" do
  version "1.3.0"
  sha256 "80d257c16d1fb73faec902249cd6cc3bd55b61de67f311cb5e094170aded06bb"

  url "https://pruneo.app/d?ref=brew&v=#{version}"
  name "Pruneo"
  desc "Disk cleaner that quarantines files before deleting them"
  homepage "https://pruneo.app/"

  livecheck do
    url "https://pruneo.app/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "Pruneo.app"
  binary "#{appdir}/Pruneo.app/Contents/Helpers/pruneo"

  uninstall launchctl: "com.pruneo.app.scheduled"

  zap trash: [
    "~/.local/bin/pruneo",
    "~/Library/Application Support/Pruneo",
    "~/Library/Caches/com.pruneo.app",
    "~/Library/HTTPStorages/com.pruneo.app",
    "~/Library/LaunchAgents/com.pruneo.app.scheduled.plist",
    "~/Library/Preferences/com.pruneo.app.plist",
    "~/Library/Saved Application State/com.pruneo.app.savedState",
  ]
end
