cask "expressvpn" do
  version "9.1.1.2"
  sha256 "bf47a8b40ffbd7eb13f68bbbe85cfe7568c4daf22080d0bc447487fef39ba2ad"

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  name "ExpressVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.expressvpn.xyz/vpn-software/vpn-mac/"

  livecheck do
    url "https://www.expressvpn.xyz/clients/latest/mac"
    strategy :header_match
  end

  auto_updates true

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall launchctl: "com.expressvpn.ExpressVPN.agent",
            script:    {
              executable: "#{appdir}/ExpressVPN.app/Contents/Resources/uninstall.tool",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil:   "com.expressvpn.ExpressVPN"
end
