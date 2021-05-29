cask "expressvpn" do
  version "10.2.4.6"
  sha256 "8ab87794c098c752defc43b5aef21c2f420f418011ab90396d2b9678a77ced2d"

  url "https://download.xpress-vpn.com/clients/mac/expressvpn_mac_#{version}_release.pkg"
  name "ExpressVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.xpress-vpn.com/vpn-software/vpn-mac/"

  livecheck do
    url "https://www.xpress-vpn.com/clients/latest/mac"
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
