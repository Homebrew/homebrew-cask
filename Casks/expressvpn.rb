cask "expressvpn" do
  version "9.0.14.2"
  sha256 "ba0a9838e9950ea1084b00189ae88a9d2d587feb7a8e9c5551476b96afc15298"

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.expressvpn.xyz/clients/latest/mac"
  name "ExpressVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.expressvpn.xyz/vpn-software/vpn-mac/"

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
