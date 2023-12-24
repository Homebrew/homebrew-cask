cask "eset-cyber-security-pro" do
  version "6.11.414.0"
  sha256 :no_check

  url "https://download.eset.com/com/eset/apps/home/ess/mac/latest/eset_cybersecurity_pro_en.dmg"
  name "ESET Cyber Security Pro"
  desc "Security including personal firewall and parental control"
  homepage "https://www.eset.com/"

  livecheck do
    url "https://help.eset.com/latestVersions/"
    regex(%r{ESET\sCyber\sSecurity\sPro</p>\n.*/span>\sv?(\d+(?:\.\d+)+)}i)
  end

  pkg "Resources/Installer.pkg"

  uninstall launchctl: [
              "com.eset.esets_daemon",
              "com.eset.esets_pidmapper",
            ],
            script:    {
              executable: "/Applications/ESET Cyber Security Pro.app/Contents/Helpers/Uninstaller.app/Contents/Scripts/uninstall.sh",
              sudo:       true,
            },
            pkgutil:   [
              "com.eset.esetCyberSecurityPro.com.eset.esets_daemon.pkg",
              "com.eset.esetCyberSecurityPro.com.eset.esets_gui.pkg",
              "com.eset.esetCyberSecurityPro.com.eset.esets_pidmapper.pkg",
              "com.eset.esetCyberSecurityPro.ESETCyberSecurityPro.pkg",
              "com.eset.esetCyberSecurityPro.GUI_startup.pkg",
              "com.eset.esetCyberSecurityPro.pkgid2.pkg",
            ],
            delete:    [
              "/Applications/ESET Cyber Security Pro.app",
              "/Library/Application Support/ESET",
            ]

  zap trash: [
    "~/.esets",
    "~/Library/Caches/com.eset.ecsp.*",
    "~/Library/Preferences/com.eset.ecsp.*.plist",
  ]
end
