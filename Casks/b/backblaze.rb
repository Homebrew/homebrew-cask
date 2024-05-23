cask "backblaze" do
  version "9.0.1.768"
  sha256 "e812aabbb3d09b12e7c6b56593d4c76342ad63be8fa03b2ce769a851ac6e6074"

  url "https://secure.backblaze.com/api/install_backblaze?file=bzinstall-mac-#{version}.dmg"
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
              "#{appdir}/BackblazeRestore.app",
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
