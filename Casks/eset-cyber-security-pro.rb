cask "eset-cyber-security-pro" do
  version "6.10.333.0"
  sha256 "c0999e233946865773942129bb52d6fc236def2f4d32ccc5950e792af2cfa61c"

  url "https://download.eset.com/com/eset/apps/home/ess/mac/latest/eset_cybersecurity_pro_en.dmg"
  appcast "https://www.eset.com/int/home/cyber-security-pro/download/?type=13554&tx_esetdownloads_ajax%5Bproduct%5D=83&tx_esetdownloads_ajax%5Bplugin_id%5D=34398"
  name "ESET Cyber Security Pro"
  homepage "https://www.eset.com/"

  pkg "Resources/Installer.pkg"

  uninstall script:    {
    executable: "/Applications/ESET Cyber Security Pro.app/Contents/Helpers/Uninstaller.app/Contents/Scripts/uninstall.sh",
    sudo:       true,
  },
            pkgutil:   [
              "com.eset.esetCyberSecurityPro.com.eset.esets_gui.pkg",
              "com.eset.esetCyberSecurityPro.pkgid2.pkg",
              "com.eset.esetCyberSecurityPro.ESETCyberSecurityPro.pkg",
              "com.eset.esetCyberSecurityPro.com.eset.esets_pidmapper.pkg",
              "com.eset.esetCyberSecurityPro.com.eset.esets_daemon.pkg",
              "com.eset.esetCyberSecurityPro.GUI_startup.pkg",
            ],
            launchctl: [
              "com.eset.esets_pidmapper",
              "com.eset.esets_daemon",
            ],
            delete:    "/Applications/ESET Cyber Security Pro.app"

  zap trash: [
    "~/Library/Caches/com.eset.ecsp.*",
    "~/Library/Preferences/com.eset.ecsp.*.plist",
    "/Library/Application Support/ESET",
    "~/.esets",
  ]
end
