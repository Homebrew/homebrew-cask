cask "acronis-true-image" do
  version "29.2,42065"
  sha256 "0bee00e25cf777d2ff059fadae300699dc062adbc0b995819da17897104afffa"

  url "https://dl.acronis.com/u/AcronisTrueImage_#{version.csv.second}.dmg"
  name "Acronis True Image"
  desc "Full image backup and cloning software"
  homepage "https://www.acronis.com/products/true-image/"

  livecheck do
    url "https://dl.acronis.com/u/liveupdate/%7B5D9634EB-1C51-4B57-BA9A-379CAF84E040%7D/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"
  depends_on cask: "acronis-true-image-cleanup-tool"

  pkg "Installer.pkg"

  uninstall launchctl: [
              "com.acronis.aakore",
              "com.acronis.acep",
              "com.acronis.acroprld_client",
              "com.acronis.active_protection",
              "com.acronis.cyber-protect-service",
              "com.acronis.escyberprotect",
              "com.acronis.helpertool",
              "com.acronis.mms_mini",
              "com.acronis.mobile_backup_server",
              "com.acronis.mobile_backup_status_server",
              "com.acronis.monitor",
              "com.acronis.scheduler",
            ],
            quit:      [
              "com.acronis.CyberProtectHomeOffice",
              "com.acronis.CyberProtectHomeOffice.FinderSyncExt",
              "com.acronis.CyberProtectHomeOffice.help",
              "com.acronis.CyberProtectHomeOffice.monitor",
              "com.acronis.escyberprotect",
            ],
            signal:    [
              ["TERM", "com.acronis.CyberProtectHomeOffice"],
              ["TERM", "com.acronis.CyberProtectHomeOffice.FinderSyncExt"],
              ["TERM", "com.acronis.CyberProtectHomeOffice.help"],
              ["TERM", "com.acronis.CyberProtectHomeOffice.monitor"],
              ["TERM", "com.acronis.escyberprotect"],
              ["KILL", "com.acronis.CyberProtectHomeOffice"],
              ["KILL", "com.acronis.CyberProtectHomeOffice.FinderSyncExt"],
              ["KILL", "com.acronis.CyberProtectHomeOffice.help"],
              ["KILL", "com.acronis.CyberProtectHomeOffice.monitor"],
              ["KILL", "com.acronis.escyberprotect"],
            ],
            pkgutil:   "com.acronis.CyberProtectHomeOffice",
            delete:    "/Applications/Acronis True Image.app"

  zap script: {
        executable: "#{HOMEBREW_PREFIX}/lib/acronis-true-image/cleanup_tool",
        sudo:       true,
      },
      delete: [
        "/Library/Application Support/Acronis",
        "/Library/Application Support/BackupClient",
        "/Library/PrivilegedHelperTools/com.acronis.helpertool",
      ],
      trash:  [
        "~/Library/Application Scripts/com.acronis.CyberProtectHomeOffice.FinderSyncExt",
        "~/Library/Application Support/Acronis",
        "~/Library/Containers/com.acronis.CyberProtectHomeOffice.FinderSyncExt",
        "~/Library/HTTPStorages/com.acronis.CyberProtectHomeOffice.monitor",
        "~/Library/Logs/Acronis",
        "~/Library/Preferences/com.acronis.CyberProtectHomeOffice.plist",
      ]
end
