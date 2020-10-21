cask "expressvpn" do
  version "9.0.12.9"
  sha256 "c0a522bff58ad824e4f57dc52eaed720299bae0f519eef0559a77ac113027d1a"

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
