cask "kmeet" do
  version "1.1.34"
  sha256 :no_check

  url "https://download.storage.infomaniak.com/meet/kMeet.dmg"
  name "kMeet"
  desc "Client for the kMeet videoconferencing solution"
  homepage "https://kmeet.infomaniak.com/"

  livecheck do
    url "https://download.storage.infomaniak.com/meet/latest-mac.yml"
    strategy :electron_builder
  end

  app "kMeet.app"

  uninstall quit: "com.infomaniak.meet"

  zap trash: [
    "~/Library/Application Support/Caches/kmeet-electron-updater",
    "~/Library/Application Support/kMeet",
    "~/Library/Logs/kMeet",
    "~/Library/Preferences/com.infomaniak.meet.plist",
  ]
end
