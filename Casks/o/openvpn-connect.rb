cask "openvpn-connect" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.1,6051"
  sha256 arm:   "b10a33cb868d0ad5ff62460928a1c77f740d23450289c92c86358133b20baee7",
         intel: "256389440844ad408ab8da380118ccee6fbf1dee744fd1bad842089c22891ea3"

  url "https://packages.openvpn.net/connect/v#{version.major}/OpenVPN_Connect_#{version.csv.first.dots_to_underscores}(#{version.csv.second})_#{arch}_Installer_signed.pkg"
  name "OpenVPN Connect client"
  desc "Client program for the OpenVPN Access Server"
  homepage "https://openvpn.net/client/"

  livecheck do
    url "https://openvpn.net/downloads/openvpn-connect-v#{version.major}-macos-#{arch}.pkg"
    regex(%r{/OpenVPN[._-]Connect[._-]v?(\d+(?:_\d+)+)\((\d+)\)[._-]#{arch}[._-]Installer[._-]signed\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  depends_on macos: :monterey

  pkg "OpenVPN_Connect_#{version.csv.first.dots_to_underscores}(#{version.csv.second})_#{arch}_Installer_signed.pkg"

  uninstall launchctl:  [
              "org.openvpn.client",
              "org.openvpn.client.app.ovpnuseragent",
              "org.openvpn.helper",
            ],
            quit:       "org.openvpn.client.app",
            login_item: "OpenVPN Connect",
            pkgutil:    [
              "org.openvpn.client.pkg",
              "org.openvpn.client_framework.pkg",
              "org.openvpn.client_launch.pkg",
              "org.openvpn.client_uninstall.pkg",
              "org.openvpn.helper_framework.pkg",
              "org.openvpn.helper_launch.pkg",
            ],
            delete:     [
              "/Applications/OpenVPN Connect",
              "/Applications/OpenVPN Connect.app",
            ]

  zap script: {
        executable:   "security",
        args:         ["delete-keychain", "openvpn.keychain-db"],
        must_succeed: false,
      },
      trash:  [
        "~/Library/Application Support/OpenVPN Connect",
        "~/Library/Logs/OpenVPN Connect",
        "~/Library/Preferences/org.openvpn.client.app.helper.plist",
        "~/Library/Preferences/org.openvpn.client.app.plist",
        "~/Library/Saved Application State/org.openvpn.client.app.savedState",
      ]
end
