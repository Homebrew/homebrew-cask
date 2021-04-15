cask "expressvpn" do
  version "10.2.2.26"
  sha256 "00cb625f07a20802f4cb5729a3414da8947fb4c9fed8416e2c321e28bc77278e"

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  name "ExpressVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.expressvpn.xyz/vpn-software/vpn-mac/"

  livecheck do
    url "https://www.expressvpn.xyz/clients/latest/mac"
    strategy :header_match
  end

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall launchctl: "com.expressvpn.ExpressVPN.agent",
            script:    {
              executable: "#{appdir}/ExpressVPN.app/Contents/Resources/uninstall.tool",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil:   "com.expressvpn.ExpressVPN"
end
