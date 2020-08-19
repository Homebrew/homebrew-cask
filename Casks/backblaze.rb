cask "backblaze" do
  version "7.0.2.464"
  sha256 "4956a72674d1901a6ec5a98ec0089ebfde743c5bb63e7644c3103e113e26d6d8"

  url "https://secure.backblaze.com/mac/install_backblaze.dmg"
  appcast "https://secure.backblaze.com/api/clientversion.xml",
          must_contain: "mac_version=\"#{version}\""
  name "Backblaze"
  homepage "https://backblaze.com/"

  installer manual: "Backblaze Installer.app"

  uninstall launchctl: [
    "com.backblaze.bzserv",
    "com.backblaze.bzbmenu",
  ],
            delete:    [
              "#{appdir}/Backblaze.app",
              "/Library/PreferencePanes/BackblazeBackup.prefPane",
            ]

  zap trash: [
    "/Library/Backblaze.bzpkg",
    "~/Library/Preferences/com.backblaze.bzbmenu.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.backblaze.*.sfl*",
    "/Library/Logs/DiagnosticReports/bzbmenu_*.*_resource.diag",
    "~/Library/Logs/BackblazeGUIInstaller",
  ]
end
