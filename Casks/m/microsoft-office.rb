cask "microsoft-office" do
  version "16.104.25121423"
  sha256 "ecfc3a99cd202e5f5a4d5a2aaa1d55f05f54b1458463d5cbf5bac10c3b406727"

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_365_and_Office_#{version}_Installer.pkg"
  name "Microsoft Office"
  desc "Office suite"
  homepage "https://www.microsoft.com/en-us/microsoft-365/mac/microsoft-365-for-mac/"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525133"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: %w[
    microsoft-excel
    microsoft-office-businesspro
    microsoft-onenote
    microsoft-outlook
    microsoft-powerpoint
    microsoft-word
    onedrive
  ]
  depends_on macos: ">= :ventura"

  pkg "Microsoft_365_and_Office_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: [
              "com.microsoft.office.licensing.helper",
              "com.microsoft.office.licensingV2.helper",
              "com.microsoft.OneDriveStandaloneUpdater",
              "com.microsoft.OneDriveStandaloneUpdaterDaemon",
              "com.microsoft.OneDriveUpdaterDaemon",
              "com.microsoft.SyncReporter",
            ],
            quit:      "com.microsoft.autoupdate2",
            pkgutil:   [
              "com.microsoft.OneDrive",
              "com.microsoft.package.DFonts",
              "com.microsoft.package.Frameworks",
              "com.microsoft.package.Microsoft_Excel.app",
              "com.microsoft.package.Microsoft_OneNote.app",
              "com.microsoft.package.Microsoft_Outlook.app",
              "com.microsoft.package.Microsoft_PowerPoint.app",
              "com.microsoft.package.Microsoft_Word.app",
              "com.microsoft.package.Proofing_Tools",
              "com.microsoft.pkg.licensing",
              "com.microsoft.wdav",
              "com.microsoft.wdav.shim",
            ],
            delete:    [
              "/Applications/Microsoft Defender Shim.app",
              "/Applications/Microsoft Defender.app",
              "/Applications/Microsoft Excel.app",
              "/Applications/Microsoft OneNote.app",
              "/Applications/Microsoft Outlook.app",
              "/Applications/Microsoft PowerPoint.app",
              "/Applications/Microsoft Word.app",
              "/Applications/OneDrive.app",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.errorreporting",
    "~/Library/Application Scripts/com.microsoft.Excel",
    "~/Library/Application Scripts/com.microsoft.Office365ServiceV2",
    "~/Library/Application Scripts/com.microsoft.OneDrive.FileProvider",
    "~/Library/Application Scripts/com.microsoft.OneDrive.FinderSync",
    "~/Library/Application Scripts/com.microsoft.OneDriveLauncher",
    "~/Library/Application Scripts/com.microsoft.onenote.mac",
    "~/Library/Application Scripts/com.microsoft.onenote.mac.shareextension",
    "~/Library/Application Scripts/com.microsoft.openxml.excel.app",
    "~/Library/Application Scripts/com.microsoft.Outlook",
    "~/Library/Application Scripts/com.microsoft.outlook.profilemanager",
    "~/Library/Application Scripts/com.microsoft.Powerpoint",
    "~/Library/Application Scripts/com.microsoft.Word",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.excel.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.word.sfl*",
    "~/Library/Application Support/CrashReporter/Microsoft Error Reporting_*.plist",
    "~/Library/Application Support/Microsoft Update Assistant",
    "~/Library/Caches/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/Containers/com.microsoft.com.microsoft.RMS-XPCService",
    "~/Library/Containers/com.microsoft.errorreporting",
    "~/Library/Containers/com.microsoft.Excel",
    "~/Library/Containers/com.microsoft.netlib.shipassertprocess",
    "~/Library/Containers/com.microsoft.Office365ServiceV2",
    "~/Library/Containers/com.microsoft.onenote.mac",
    "~/Library/Containers/com.microsoft.onenote.mac.shareextension",
    "~/Library/Containers/com.microsoft.openxml.excel.app",
    "~/Library/Containers/com.microsoft.Outlook",
    "~/Library/Containers/com.microsoft.outlook.profilemanager",
    "~/Library/Containers/com.microsoft.Powerpoint",
    "~/Library/Containers/com.microsoft.Word",
    "~/Library/Group Containers/UBF8T346G9.ms",
    "~/Library/Group Containers/UBF8T346G9.Office",
    "~/Library/Group Containers/UBF8T346G9.OfficeOneDriveSyncIntegration",
    "~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost",
    "~/Library/HTTPStorages/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/HTTPStorages/com.microsoft.OneDriveStandaloneUpdater.binarycookies",
    "~/Library/Preferences/com.microsoft.Excel.plist",
    "~/Library/Preferences/com.microsoft.Outlook.plist",
    "~/Library/Preferences/com.microsoft.Powerpoint.plist",
    "~/Library/Preferences/com.microsoft.Word.plist",
    "~/Library/Saved Application State/com.microsoft.office.setupassistant.savedState",
    "~/Library/Saved Application State/com.microsoft.Word.savedState",
  ]
end
