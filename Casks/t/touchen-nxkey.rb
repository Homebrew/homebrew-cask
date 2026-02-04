cask "touchen-nxkey" do
  version :latest
  sha256 :no_check

  url "https://download.raonsecure.com/TouchEnnxKey/current/mac/TouchEn_nxKey_Installer.pkg"
  name "TouchEn nxKey"
  desc "Keyboard Security Solution (Anti-Keylogger)"
  homepage "https://www.raonsecure.com/"

  livecheck do
    skip "No version information available"
  end

  pkg "TouchEn_nxKey_Installer.pkg"

  uninstall launchctl: [
              "com.raon.agent.touchen.nxkey",
              "com.raon.touchen.UserAgent",
            ],
            pkgutil:   "com.raonsecure.pkg.nxkey",
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
