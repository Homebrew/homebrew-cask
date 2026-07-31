cask "idrive" do
  version "4.0.0.86,073126"
  sha256 "d458ef256a057c6a7690c294c445b43a899bee3241545fec9cd35c508256a2a9"

  url "https://static.idriveonlinebackup.com/downloads/#{version.csv.second}/IDrive.dmg",
      verified: "static.idriveonlinebackup.com/downloads/"
  name "iDrive"
  desc "Cloud backup and storage solution"
  homepage "https://www.idrive.com/"

  # The upstream download page appends a UNIX epoch timestamp (in milliseconds)
  # to the JavaScript URL, so we do the same (in case it affects the returned data).
  livecheck do
    url "https://static.idriveonlinebackup.com/downloads/version_mac.js?v=#{DateTime.now.strftime("%Q")}"
    strategy :page_match do |page|
      version_match = page.match(/Version:?\s*v?(\d+(?:\.\d+)+)/i)
      next if version_match.blank?

      id_match = page.match(%r{downloads/([^/]+?)/}i)
      next if id_match.blank?

      "#{version_match[1]},#{id_match[1]}"
    end
  end

  depends_on :macos

  pkg "IDrive.pkg"

  uninstall launchctl: [
              "com.iDrive.FinderPluginApp",
              "com.prosoftnet.DaemonHelper",
              "com.prosoftnet.idrivedaemon",
              "com.prosoftnet.idsyncdaemon",
              "IDriveDaemon",
              "IDSyncDaemon",
              "IDWifiManager",
            ],
            quit:      [
              "com.prosfotnet.IDWifiManager",
              "com.prosoftnet.IDrive",
              "com.prosoftnet.IDriveDaemon",
              "com.prosoftnet.IDriveMonitor",
            ],
            pkgutil:   [
              "com.idrive.IDrive",
              "com.profsoftnet.idrive.*",
            ]

  zap trash: [
    "/Library/Application Support/IDriveforMac",
    "~/Library/Application Scripts/Idrive.Finder*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.prosoftnet.idrivemonitor.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/idrive.finderpluginapp.sfl*",
    "~/Library/Application Support/IDriveforMac",
    "~/Library/Caches/com.prosoftnet.IDriveMonitor",
    "~/Library/Containers/Idrive.FinderPluginApp.IDriveFinderSync",
    "~/Library/Group Containers/Idrive.Finder",
    "~/Library/Preferences/com.prosoftnet.IDrive.plist",
    "~/Library/Preferences/com.prosoftnet.IDriveMonitor.plist",
    "~/Library/Preferences/Idrive.FinderPluginApp.plist",
  ]
end
