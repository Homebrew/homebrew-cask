cask "onedrive" do
  version "21.030.0211.0002"
  sha256 "35bd4452844f9b7c41a3af5f3ee7dffa07e236b552bbb4e1f20a7e9cb6e177d7"

  url "https://oneclient.sfx.ms/Mac/Direct/#{version}/OneDrive.pkg",
      verified: "oneclient.sfx.ms/Mac/Direct/"
  name "OneDrive"
  desc "Cloud storage client"
  homepage "https://onedrive.live.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=823060"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "microsoft-office"
  depends_on macos: ">= :sierra"

  pkg "OneDrive.pkg"

  uninstall delete:    "/Applications/OneDrive.app",
            launchctl: [
              "com.microsoft.OneDriveUpdaterDaemon",
              "com.microsoft.OneDriveStandaloneUpdater",
              "com.microsoft.OneDriveStandaloneUpdaterDaemon",
            ],
            pkgutil:   "com.microsoft.OneDrive",
            quit:      [
              "com.microsoft.OneDrive",
              "com.microsoft.OneDriveUpdater",
              "com.microsoft.OneDrive.FinderSync",
            ]

  zap trash: [
    "~/Library/Application Support/OneDrive",
    "~/Library/Application Support/com.microsoft.OneDrive",
    "~/Library/Application Support/com.microsoft.OneDriveUpdater",
    "~/Library/Application Support/OneDriveUpdater",
    "~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync",
    "~/Library/Application Scripts/com.microsoft.OneDriveLauncher",
    "~/Library/Application Scripts/com.microsoft.OneDrive-mac",
    "~/Library/Caches/com.microsoft.OneDrive",
    "~/Library/Caches/com.microsoft.OneDriveUpdater",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDrive",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveUpdater",
    "~/Library/Containers/com.microsoft.OneDriveLauncher",
    "~/Library/Containers/com.microsoft.OneDrive.FinderSync",
    "~/Library/Cookies/com.microsoft.OneDrive.binarycookies",
    "~/Library/Cookies/com.microsoft.OneDriveUpdater.binarycookies",
    "~/Library/Group Containers/*.OneDriveStandaloneSuite",
    "~/Library/Group Containers/*.OneDriveSyncClientSuite",
    "~/Library/Group Containers/*.OfficeOneDriveSyncIntegration",
    "~/Library/Logs/OneDrive",
    "~/Library/Preferences/com.microsoft.OneDrive.plist",
    "~/Library/Preferences/com.microsoft.OneDriveUpdater.plist",
    "~/Library/Preferences/*.OneDriveStandaloneSuite.plist",
  ]
end
