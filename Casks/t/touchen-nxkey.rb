cask "touchen-nxkey" do
  version :latest
  sha256 :no_check

  url "https://download.raonsecure.com/TouchEnnxKey/current/mac/TouchEn_nxKey_Installer.pkg"
  name "TouchEn nxKey"
  desc "Keyboard Security Solution (Anti-Keylogger)"
  homepage "https://www.raonsecure.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "TouchEn_nxKey_Installer.pkg"

  uninstall launchctl: [
              "com.raon.agent.touchen.nxkey",
              "com.raon.touchen.nxkey",
              "com.raon.touchen.UserAgent",
              "kr.co.iniline.crossex-service",
            ],
            pkgutil:   [
              "com.raonsecure.pkg.nxkey",
              "kr.co.iniline.pkg.CrossEXPackage",
              "kr.co.iniline.pkg.CrossEXServicePackage",
            ],
            delete:    [
              "/Applications/CrossEX",
              "/Applications/TouchEn nxKey",
              "/Library/Application Support/iniLINE",
              "/Library/Application Support/raonsecure",
              "/Library/com.raon.touchen.UserAgent.plist",
              "/Library/LaunchAgents/com.raon.agent.touchen.nxkey.plist",
              "/Library/LaunchDaemons/com.raon.touchen.nxkey.plist",
              "/Library/nxkey.json",
              "/Library/TEK_Daemon*",
              "/Library/TKUKMD.kext",
              "/Library/TKVHD.kext",
            ]

  zap trash: [
    "~/Library/Application Support/TouchEn nxKey",
    "~/Library/Preferences/com.raonsecure.touchen-nxkey.plist",
    "~/Library/Saved Application State/com.raonsecure.touchen-nxkey.savedState",
  ]
end
