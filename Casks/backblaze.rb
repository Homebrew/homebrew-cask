cask "backblaze" do
  version "7.0.2.490"
  sha256 "45f4f94f7adf58666df79ba104c9fa2e6ca46c0c99859af15165406899f3490f"

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
