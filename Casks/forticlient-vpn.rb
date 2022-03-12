cask "forticlient-vpn" do
  version "7.0"
  sha256 "9bc0fd4a55e468ac0ae9483a544e81489d05cce3ae0aab3edbe29c4d4aa8f057"

  url "https://filestore.fortinet.com/forticlient/downloads/FortiClientVPNOnlineInstaller_#{version}.dmg",
      verified: "filestore.fortinet.com/forticlient/"
  name "FortiClient VPN"
  desc "Free VPN client for FortiClient"
  homepage "https://forticlient.com/"

  livecheck do
    url "https://links.fortinet.com/forticlient/mac/vpnagent"
    strategy :header_match
  end

  installer manual: "FortiClientUpdate.app"

  uninstall script: {
    executable: "/Applications/FortiClientUninstaller.app/Contents/MacOS/Uninstall",
    sudo:       true,
  }

  zap trash: [
    "/Library/Application Support/Fortinet",
    "~/Library/Application Support/Fortinet",
    "~/Library/Application Support/FortiClient",
  ]
end
