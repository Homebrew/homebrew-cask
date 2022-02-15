cask "backblaze" do
  version "8.0.1.584"
  sha256 :no_check

  url "https://secure.backblaze.com/mac/install_backblaze.dmg"
  name "Backblaze"
  desc "Data backup and storage service"
  homepage "https://backblaze.com/"

  livecheck do
    url "https://secure.backblaze.com/api/clientversion.xml"
    regex(/mac[._-]version=.*?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  installer manual: "Backblaze Installer.app"

  uninstall launchctl: [
    "com.backblaze.bzbmenu",
    "com.backblaze.bzserv",
  ],
            delete:    [
              "#{appdir}/Backblaze.app",
              "/Library/Logs/DiagnosticReports/bzbmenu_*.*_resource.diag",
              "/Library/PreferencePanes/BackblazeBackup.prefPane",
            ]

  zap trash: [
    "/Library/Backblaze.bzpkg",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.backblaze.*.sfl*",
    "~/Library/Logs/BackblazeGUIInstaller",
    "~/Library/Preferences/com.backblaze.bzbmenu.plist",
  ]
end
