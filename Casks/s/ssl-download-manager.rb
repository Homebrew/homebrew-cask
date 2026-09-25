cask "ssl-download-manager" do
  version "1.6.10"
  sha256 "e56832df5bc61ba642ec24546ecf961522cd603e621225457fbc01141e558417"

  url "https://softwareupdate.solidstatelogic.com/DownloadManager/appReleases/latest/SSL%20Download%20Manager-#{version}-universal.dmg"
  name "SSL Download Manager"
  desc "Software manager for SSL plug-ins"
  homepage "https://www.solidstatelogic.com/ssl-download-manager"

  livecheck do
    url "https://www.solidstatelogic.com/ssl-download-manager"
    regex(/SSL%20Download%20Manager[._-](\d+(?:\.\d+)+)-universal/i)
  end

  depends_on macos: :monterey

  app "SSL Download Manager.app"

  uninstall launchctl: "com.solidstatelogic.analytics"

  zap trash: [
    "~/Library/Application Support/CrashReporter/SSL Download Manager_*.plist",
    "~/Library/Application Support/SSL Download Manager",
    "~/Library/Caches/com.solidstatelogic.downloadmanager*",
    "~/Library/HTTPStorages/com.solidstatelogic.downloadmanager",
    "~/Library/Logs/SSL Download Manager",
    "~/Library/Preferences/ByHost/com.solidstatelogic.downloadmanager.ShipIt.*.plist",
    "~/Library/Preferences/com.solidstatelogic.downloadmanager.plist",
  ]
end
