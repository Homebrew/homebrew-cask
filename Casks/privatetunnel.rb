cask "privatetunnel" do
  version "3.0.1,1643"
  sha256 "47c693662f88b43a4734442287489d4623a6bd7cdeb837ac79fe94c27f0a059d"

  # swupdate.openvpn.net/downloads/privatetunnel/ was verified as official when first introduced to the cask
  url "https://swupdate.openvpn.net/downloads/privatetunnel/private-tunnel-#{version.before_comma}.#{version.after_comma}_signed.dmg"
  appcast "https://www.privatetunnel.com/apps/"
  name "Private Tunnel"
  homepage "https://www.privatetunnel.com/home/"

  pkg "Private_Tunnel_#{version.before_comma.dots_to_underscores}(#{version.after_comma})_Installer_signed.pkg"

  uninstall pkgutil:   [
    "org.openvpn.privatetunnel.pkg",
    "org.openvpn.privatetunnel_framework.pkg",
    "org.openvpn.privatetunnel_launch.pkg",
    "org.openvpn.privatetunnel_uninstall.pkg",
  ],
            delete:    "/Applications/Private Tunnel.app",
            quit:      "org.openvpn.proivatetunnel.app",
            launchctl: "org.openvpn.privatetunnel"
end
