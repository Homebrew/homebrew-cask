cask "openvpn-connect" do
  version "3.3.1,4000"
  sha256 "221fe99f9eaa998a2f39f02ffdb16005eb5fae890dce1c1474bbd4b5fa691171"

  url "https://swupdate.openvpn.net/downloads/connect/openvpn-connect-#{version.before_comma}.#{version.after_comma}_signed.dmg"
  name "OpenVPN Connect client"
  desc "Client program for the OpenVPN Access Server"
  homepage "https://openvpn.net/client-connect-vpn-for-mac-os/"

  livecheck do
    url "https://openvpn.net/downloads/openvpn-connect-v#{version.major}-macos.dmg"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/openvpn-connect-(\d+(?:\.\d+)*)\.(\d+)_signed\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  pkg "OpenVPN_Connect_#{version.before_comma.dots_to_underscores}(#{version.after_comma})_Installer_signed.pkg"

  uninstall launchctl: [
    "org.openvpn.client",
    "org.openvpn.helper",
  ],
            script:    {
              executable: "/Applications/OpenVPN Connect/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh",
              sudo:       true,
            },
            pkgutil:   [
              "org.openvpn.client.pkg",
              "org.openvpn.client_framework.pkg",
              "org.openvpn.client_launch.pkg",
              "org.openvpn.client_uninstall.pkg",
              "org.openvpn.helper_framework.pkg",
              "org.openvpn.helper_launch.pkg",
            ]
end
