cask "backblaze" do
  version "7.0.2.498"
  sha256 "a39d9d1014d796c7b356413771fea1d277b00073ef43fe9be50ebbb56f7ef323"

  url "https://secure.backblaze.com/api/install_backblaze?file=bzinstall-mac-#{version}.zip"
  name "Backblaze"
  desc "Data backup and storage service"
  homepage "https://backblaze.com/"

  livecheck do
    url "https://secure.backblaze.com/api/clientversion.xml"
    strategy :page_match
    regex(/mac_version=.*?(\d+(?:\.\d+)*)/i)
  end

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
