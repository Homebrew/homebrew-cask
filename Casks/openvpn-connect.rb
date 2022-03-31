cask "openvpn-connect" do
  version "3.3.5,4310"
  sha256 "2cdf0138b949eee1e6675616bd32e42d97434ba270604d2d7bc1e899c961657f"

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

  uninstall quit:       "org.openvpn.client.app",
            launchctl:  [
              "org.openvpn.client",
              "org.openvpn.helper",
            ],
            pkgutil:    [
              "org.openvpn.client_framework.pkg",
              "org.openvpn.client_launch.pkg",
              "org.openvpn.client_uninstall.pkg",
              "org.openvpn.client.pkg",
              "org.openvpn.helper_framework.pkg",
              "org.openvpn.helper_launch.pkg",
            ],
            delete:     [
              "/Applications/OpenVPN Connect",
              "/Applications/OpenVPN Connect.app",
            ],
            login_item: [
              "OpenVPN Connect",
            ]

  zap trash: [
    "~/Library/Application Support/OpenVPN Connect",
    "~/Library/Logs/OpenVPN Connect",
    "~/Library/Preferences/org.openvpn.client.app.helper.plist",
    "~/Library/Preferences/org.openvpn.client.app.plist",
    "~/Library/Saved Application State/org.openvpn.client.app.savedState",
  ], script: {
    executable: "security",
    args:       ["delete-keychain", "openvpn.keychain-db"],
  }
end
