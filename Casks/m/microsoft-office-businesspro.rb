cask "microsoft-office-businesspro" do
  version "16.86.24060916"
  sha256 "4a975380e91bbdb2c9e8b9511bb12937805d378480d119f4c58e551f590549ad"

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_365_and_Office_#{version}_BusinessPro_Installer.pkg"
  name "Microsoft Office BusinessPro"
  desc "Office suite"
  homepage "https://www.microsoft.com/en-us/microsoft-365/mac/microsoft-365-for-mac/"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=2009112"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: %w[
    microsoft-excel
    microsoft-office
    microsoft-onenote
    microsoft-outlook
    microsoft-powerpoint
    microsoft-teams
    microsoft-teams@classic
    microsoft-word
    onedrive
  ]
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :monterey"

  pkg "Microsoft_365_and_Office_#{version}_BusinessPro_Installer.pkg",
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
              "com.microsoft.teams.TeamsUpdaterDaemon",
            ],
            quit:      "com.microsoft.autoupdate2",
            pkgutil:   [
              "com.microsoft.MSTeamsAudioDevice",
              "com.microsoft.OneDrive",
              "com.microsoft.package.DFonts",
              "com.microsoft.package.Frameworks",
              "com.microsoft.package.Microsoft_AutoUpdate.app",
              "com.microsoft.package.Microsoft_Excel.app",
              "com.microsoft.package.Microsoft_OneNote.app",
              "com.microsoft.package.Microsoft_Outlook.app",
              "com.microsoft.package.Microsoft_PowerPoint.app",
              "com.microsoft.package.Microsoft_Word.app",
              "com.microsoft.package.Proofing_Tools",
              "com.microsoft.pkg.licensing",
              "com.microsoft.teams",
              "com.microsoft.teams2",
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
              "/Applications/Microsoft Teams.app",
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
    "~/Library/Application Support/com.microsoft.teams",
    "~/Library/Application Support/CrashReporter/Microsoft Error Reporting_*.plist",
    "~/Library/Application Support/Microsoft Update Assistant",
    "~/Library/Application Support/Microsoft/Teams",
    "~/Library/Application Support/Teams",
    "~/Library/Caches/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/Caches/com.microsoft.teams",
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
    "~/Library/Cookies/com.microsoft.teams.binarycookies",
    "~/Library/Group Containers/UBF8T346G9.ms",
    "~/Library/Group Containers/UBF8T346G9.Office",
    "~/Library/Group Containers/UBF8T346G9.OfficeOneDriveSyncIntegration",
    "~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost",
    "~/Library/HTTPStorages/com.microsoft.OneDriveStandaloneUpdater",
    "~/Library/HTTPStorages/com.microsoft.OneDriveStandaloneUpdater.binarycookies",
    "~/Library/Logs/Microsoft Teams",
    "~/Library/Preferences/com.microsoft.Excel.plist",
    "~/Library/Preferences/com.microsoft.Outlook.plist",
    "~/Library/Preferences/com.microsoft.Powerpoint.plist",
    "~/Library/Preferences/com.microsoft.teams.plist",
    "~/Library/Preferences/com.microsoft.Word.plist",
    "~/Library/Saved Application State/com.microsoft.office.setupassistant.savedState",
    "~/Library/Saved Application State/com.microsoft.teams.savedState",
    "~/Library/Saved Application State/com.microsoft.Word.savedState",
    "~/Library/WebKit/com.microsoft.teams",
  ]
end
