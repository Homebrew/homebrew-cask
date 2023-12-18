cask "private-internet-access" do
  version "3.5.3-07926"
  sha256 "5fc0a677828d76a260755d7a72db59efd213927bad26ac2cfccb7b346be7e5a2"

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  name "Private Internet Access"
  desc "VPN client"
  homepage "https://www.privateinternetaccess.com/"

  livecheck do
    url "https://www.privateinternetaccess.com/installer/x/download_installer_osx"
    regex(/pia-macos-(\d+(?:.\d+)*)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  installer script: {
    executable: "Private Internet Access Installer.app/Contents/Resources/vpn-installer.sh",
    sudo:       true,
  }

  uninstall quit:      "com.privateinternetaccess.vpn",
            delete:    [
              "/Applications/Private Internet Access.app",
              "/usr/local/bin/piactl",
            ],
            launchctl: [
              "com.privateinternetaccess.vpn.installhelper",
              "com.privateinternetaccess.vpn.daemon",
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
