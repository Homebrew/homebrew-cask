cask "private-internet-access" do
  version "3.7.2-08420"
  sha256 "5677fa6fd8ccc1a3d31d568e7c00a99c0887797b359a1db07d75e1de77f4fb0a"

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  name "Private Internet Access"
  desc "VPN client"
  homepage "https://www.privateinternetaccess.com/"

  livecheck do
    url "https://www.privateinternetaccess.com/installer/x/download_installer_osx"
    regex(/pia-macos-(\d+(?:[.-]\d+)*)\.zip/i)
  end

  auto_updates true

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
