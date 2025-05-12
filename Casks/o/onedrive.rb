cask "onedrive" do
  version "25.070.0413.0001"
  sha256 "c209d5dab529f5bdc2cdda2b09754ba65dc22e70211633214e785021b6af1632"

  url "https://oneclient.sfx.ms/Mac/Installers/#{version}/universal/OneDrive.pkg",
      verified: "oneclient.sfx.ms/Mac/Installers/"
  name "OneDrive"
  desc "Cloud storage client"
  homepage "https://www.microsoft.com/en-us/microsoft-365/onedrive/online-cloud-storage"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=823060"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]
  depends_on macos: ">= :mojave"

  pkg "OneDrive.pkg"

  uninstall launchctl: [
              "com.microsoft.OneDriveStandaloneUpdater",
              "com.microsoft.OneDriveStandaloneUpdaterDaemon",
              "com.microsoft.OneDriveUpdaterDaemon",
              "com.microsoft.SyncReporter",
            ],
            quit:      [
              "com.microsoft.OneDrive",
              "com.microsoft.OneDrive.FinderSync",
              "com.microsoft.OneDriveUpdater",
            ],
            pkgutil:   "com.microsoft.OneDrive",
            delete:    [
              "/Applications/OneDrive.app",
              "/Library/LaunchAgents/com.microsoft.OneDriveStandaloneUpdater.plist",
              "/Library/LaunchDaemons/com.microsoft.OneDriveStandaloneUpdaterDaemon.plist",
              "/Library/LaunchDaemons/com.microsoft.OneDriveUpdaterDaemon.plist",
              "/Library/Logs/Microsoft/OneDrive",
            ]

  zap trash: [
    "~/Library/Application Scripts/*.OfficeOneDriveSyncIntegration",
    "~/Library/Application Scripts/*.OneDriveStandaloneSuite",
    "~/Library/Application Scripts/com.microsoft.OneDrive-mac",
    "~/Library/Application Scripts/com.microsoft.OneDrive.FileProvider",
    "~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync",
    "~/Library/Application Scripts/com.microsoft.OneDriveLauncher",
    "~/Library/Application Support/com.microsoft.OneDrive",
    "~/Library/Application Support/com.microsoft.OneDriveUpdater",
    "~/Library/Application Support/FileProvider/com.microsoft.OneDrive.FileProvider",
    "~/Library/Application Support/OneDrive",
    "~/Library/Application Support/OneDriveUpdater",
    "~/Library/Caches/com.microsoft.OneDrive",
    "~/Library/Caches/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/Caches/com.microsoft.OneDriveUpdater",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDrive",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveUpdater",
    "~/Library/Caches/OneDrive",
    "~/Library/Containers/com.microsoft.OneDrive.FileProvider",
    "~/Library/Containers/com.microsoft.OneDrive.FinderSync",
    "~/Library/Containers/com.microsoft.OneDriveLauncher",
    "~/Library/Cookies/com.microsoft.OneDrive.binarycookies",
    "~/Library/Cookies/com.microsoft.OneDriveUpdater.binarycookies",
    "~/Library/Group Containers/*.OfficeOneDriveSyncIntegration",
    "~/Library/Group Containers/*.OneDriveStandaloneSuite",
    "~/Library/Group Containers/*.OneDriveSyncClientSuite",
    "~/Library/HTTPStorages/com.microsoft.OneDrive",
    "~/Library/HTTPStorages/com.microsoft.OneDrive.binarycookies",
    "~/Library/HTTPStorages/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/HTTPStorages/com.microsoft.OneDriveStandaloneUpdater.binarycookies",
    "~/Library/Logs/OneDrive",
    "~/Library/Preferences/*.OneDriveStandaloneSuite.plist",
    "~/Library/Preferences/com.microsoft.OneDrive.plist",
    "~/Library/Preferences/com.microsoft.OneDriveStandaloneUpdater.plist",
    "~/Library/Preferences/com.microsoft.OneDriveUpdater.plist",
    "~/Library/WebKit/com.microsoft.OneDrive",
  ]
end
