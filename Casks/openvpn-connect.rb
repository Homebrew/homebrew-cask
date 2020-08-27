cask "openvpn-connect" do
  version "3.2.2,1899"
  sha256 "0fcab3724cc71d1b2fc1cf645982fb7b70a5d860f5a8eadf03bf9d01ca973ca2"

  url "https://swupdate.openvpn.net/downloads/connect/openvpn-connect-#{version.before_comma}.#{version.after_comma}_signed.dmg"
  appcast "https://openvpn.net/client-connect-vpn-for-mac-os/"
  name "OpenVPN Connect client"
  homepage "https://openvpn.net/client-connect-vpn-for-mac-os/"

  pkg "OpenVPN_Connect_#{version.before_comma.dots_to_underscores}(#{version.after_comma})_Installer_signed.pkg"

  uninstall launchctl: "org.openvpn.client",
            script:    {
              executable: "/Applications/OpenVPN Connect/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh",
              sudo:       true,
            },
            pkgutil:   [
              "org.openvpn.client.pkg",
              "org.openvpn.client_framework.pkg",
              "org.openvpn.client_launch.pkg",
              "org.openvpn.client_uninstall.pkg",
            ]
end
