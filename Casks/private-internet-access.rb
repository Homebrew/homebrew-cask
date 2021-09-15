cask "private-internet-access" do
  version "3.0.1-06696"
  sha256 "6aff2a526344b30665a25208d266d06c31214b0a5eba7be0e14a8bc145035631"

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

  uninstall script: {
    executable: "/Applications/Private Internet Access.app/Contents/Resources/vpn-installer.sh",
    args:       ["uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Support/com.privateinternetaccess.vpn",
    "~/Library/LaunchAgents/com.privateinternetaccess.vpn",
    "~/Library/Preferences/com.privateinternetaccess.vpn",
    "~/Library/Preferences/com.privateinternetaccess.vpn.plist",
  ]
end
