cask "private-internet-access" do
  version "3.8-08539"
  sha256 "824b5a469a7e42a634e98f140e6d31d567d564c8edaa78ebb6b05f0de311008e"

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  name "Private Internet Access"
  desc "VPN client"
  homepage "https://www.privateinternetaccess.com/"

  livecheck do
    url "https://www.privateinternetaccess.com/installer/x/download_installer_osx"
    regex(/pia-macos-(\d+(?:[.-]\d+)*)\.zip/i)
  end

  auto_updates true
  depends_on :macos

  installer script: {
    executable: "Private Internet Access Installer.app/Contents/Resources/vpn-installer.sh",
    sudo:       true,
  }

  uninstall launchctl: [
              "com.privateinternetaccess.vpn.daemon",
              "com.privateinternetaccess.vpn.installhelper",
            ],
            quit:      "com.privateinternetaccess.vpn",
            delete:    [
              "/Applications/Private Internet Access.app",
              "/usr/local/bin/piactl",
            ]

  # The uninstall script should only be used with --zap because it removes all preference files
  zap script: {
    executable: "/Applications/Private Internet Access.app/Contents/Resources/vpn-installer.sh",
    args:       ["uninstall"],
    sudo:       true,
  }, trash: [
    "~/Library/Application Support/com.privateinternetaccess.vpn",
    "~/Library/LaunchAgents/com.privateinternetaccess.vpn",
    "~/Library/LaunchAgents/com.privateinternetaccess.vpn.client.plist",
    "~/Library/Preferences/com.privateinternetaccess.vpn",
    "~/Library/Preferences/com.privateinternetaccess.vpn.plist",
    "~/Library/Preferences/com.privateinternetaccess.vpn.support-tool.com.privateinternetaccess.vpn.plist",
  ]
end
