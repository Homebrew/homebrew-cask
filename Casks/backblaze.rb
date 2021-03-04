cask "backblaze" do
  version "7.0.2.488"
  sha256 "a1d7ea84c1c5fc5c7fecf92cad5b6a6863a4378459663ad247e7fc286cdf3ccc"

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
