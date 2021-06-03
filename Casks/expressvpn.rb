cask "expressvpn" do
  version "10.3.0.49"
  sha256 "46b843e6396ab8f5dca3ba838e72ce9ae408a80e3ce197f76cb8995bfd97c4ad"

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
