cask "privatetunnel" do
  version "3.0.2,3242"
  sha256 "9d0710b152bc50314a09849eaa011166a87ef85a8b93e05d4f089251e978ca69"

  url "https://swupdate.openvpn.net/downloads/privatetunnel/private-tunnel-#{version.csv.first}.#{version.csv.second}_signed.dmg",
      verified: "swupdate.openvpn.net/downloads/privatetunnel/"
  name "Private Tunnel"
  desc "VPN client"
  homepage "https://www.privatetunnel.com/home/"

  livecheck do
    url "https://www.privatetunnel.com/apps/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/private-tunnel-(\d+(?:\.\d+)*)\.(\d+)_signed\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

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
