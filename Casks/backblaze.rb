cask "backblaze" do
  version "7.0.2.492"
  sha256 "bec93cfedb5726aff1f1a67d85a1552428260f6ba2875a036600b18cc6a2dcfa"

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
