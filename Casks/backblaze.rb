cask "backblaze" do
  version "7.0.2.464"
  sha256 "1fed02eb7190c0ce052b6f1c0f5b33a7e89178cd1501a46cf99c2842109f9edf"

  url "https://secure.backblaze.com/api/install_backblaze?file=bzinstall-mac-#{version}.zip"
  appcast "https://secure.backblaze.com/api/clientversion.xml",
          must_contain: "mac_version=\"#{version}\""
  name "Backblaze"
  desc "Data backup and storage service"
  homepage "https://backblaze.com/"

  auto_updates true

  installer manual: "bzdoinstall.app"

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
