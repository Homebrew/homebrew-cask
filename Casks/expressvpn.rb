cask "expressvpn" do
  version "7.11.4.4"
  sha256 "8aa38570798172fb4b1586ff89786d07648cc5a6175f74a15f50450c05b75a88"

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
