cask "openvpn-connect" do
  version "3.3.3,4163"
  sha256 "758459b63a798bd57eb08bb3cbe94c080a1762656c9a7a7e43f017e1211ecd2d"

  url "https://swupdate.openvpn.net/downloads/connect/openvpn-connect-#{version.csv.first}.#{version.csv.second}_signed.dmg"
  name "OpenVPN Connect client"
  desc "Client program for the OpenVPN Access Server"
  homepage "https://openvpn.net/client-connect-vpn-for-mac-os/"

  livecheck do
    url "https://openvpn.net/downloads/openvpn-connect-v#{version.major}-macos.dmg"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/openvpn-connect-(\d+(?:\.\d+)+)\.(\d+)_signed\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "OpenVPN_Connect_#{version.csv.first.dots_to_underscores}(#{version.csv.second})_Installer_signed.pkg"

  uninstall quit:      "org.openvpn.client.app",
            launchctl: [
              "org.openvpn.client",
              "org.openvpn.helper",
            ],
            script:    {
              executable: "/Applications/OpenVPN Connect/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh",
              sudo:       true,
            },
            pkgutil:   [
              "org.openvpn.client_framework.pkg",
              "org.openvpn.client_launch.pkg",
              "org.openvpn.client_uninstall.pkg",
              "org.openvpn.client.pkg",
              "org.openvpn.helper_framework.pkg",
              "org.openvpn.helper_launch.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/OpenVPN Connect",
    "~/Library/Preferences/org.openvpn.client.app.plist",
  ]
end
