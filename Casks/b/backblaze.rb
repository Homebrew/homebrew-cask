cask "backblaze" do
  version "9.2.2.884"
  sha256 "8cd642a2f8006b1be9380da910ddf377eec34523a7ac1b65ffa92e3cd6979dc7"

  url "https://secure.backblaze.com/api/install_backblaze?file=bzinstall-mac-#{version}.dmg"
  name "Backblaze"
  desc "Data backup and storage service"
  homepage "https://backblaze.com/"

  livecheck do
    url "https://secure.backblaze.com/api/clientversion.xml"
    strategy :xml do |xml|
      xml.get_elements("//release").map { |item| item.attributes["mac_version"] }
    end
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
