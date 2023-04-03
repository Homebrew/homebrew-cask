cask "onedrive" do
  version "23.054.0313.0003"
  sha256 "7964988ae0597e12b5c7636ebe627c3d2fc9bc5444e1137c23923c00d8d6856e"

  url "https://oneclient.sfx.ms/Mac/Installers/#{version}/universal/OneDrive.pkg",
      verified: "oneclient.sfx.ms/Mac/Installers/"
  name "OneDrive"
  desc "Cloud storage client"
  homepage "https://onedrive.live.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=823060"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]
  depends_on macos: ">= :sierra"

  pkg "OneDrive.pkg"

  uninstall delete:    "/Applications/OneDrive.app",
            launchctl: [
              "com.microsoft.OneDriveStandaloneUpdater",
              "com.microsoft.OneDriveStandaloneUpdaterDaemon",
              "com.microsoft.OneDriveUpdaterDaemon",
              "com.microsoft.SyncReporter",
            ],
            pkgutil:   "com.microsoft.OneDrive",
            quit:      [
              "com.microsoft.OneDrive.FinderSync",
              "com.microsoft.OneDrive",
              "com.microsoft.OneDriveUpdater",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.OneDrive-mac",
    "~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync",
    "~/Library/Application Scripts/com.microsoft.OneDriveLauncher",
    "~/Library/Application Support/com.microsoft.OneDrive",
    "~/Library/Application Support/com.microsoft.OneDriveUpdater",
    "~/Library/Application Support/OneDrive",
    "~/Library/Application Support/OneDriveUpdater",
    "~/Library/Caches/com.microsoft.OneDrive",
    "~/Library/Caches/com.microsoft.OneDriveUpdater",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDrive",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveUpdater",
    "~/Library/Containers/com.microsoft.OneDrive.FinderSync",
    "~/Library/Containers/com.microsoft.OneDriveLauncher",
    "~/Library/Cookies/com.microsoft.OneDrive.binarycookies",
    "~/Library/Cookies/com.microsoft.OneDriveUpdater.binarycookies",
    "~/Library/Group Containers/*.OfficeOneDriveSyncIntegration",
    "~/Library/Group Containers/*.OneDriveStandaloneSuite",
    "~/Library/Group Containers/*.OneDriveSyncClientSuite",
    "~/Library/Logs/OneDrive",
    "~/Library/Preferences/*.OneDriveStandaloneSuite.plist",
    "~/Library/Preferences/com.microsoft.OneDrive.plist",
    "~/Library/Preferences/com.microsoft.OneDriveUpdater.plist",
  ]
end
