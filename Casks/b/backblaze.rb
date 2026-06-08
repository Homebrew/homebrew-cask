cask "backblaze" do
  version "10.0.2.1048"
  sha256 "21c7501391c3f28c13fd49c7e4eae24ea2780b708ef690cdc70464a88e141d57"

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
  depends_on :macos

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
