cask "private-internet-access" do
  version "3.3-06906"
  sha256 "3c6bf5a64f9e1dc262f78ce2fb4ee6512febd4ce1943c453912e26209274b00c"

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
    "~/Library/LaunchAgents/com.privateinternetaccess.vpn.client.plist",
    "~/Library/Preferences/com.privateinternetaccess.vpn",
    "~/Library/Preferences/com.privateinternetaccess.vpn.plist",
    "~/Library/Preferences/com.privateinternetaccess.vpn.support-tool.com.privateinternetaccess.vpn.plist",
  ]
end
