cask "amneziavpn" do
  version "5.1.1.10"
  sha256 "fb68f3818ee32ceb8a8d83988cbbd86a063e55bb93fbbc81cc67cfb28be5d2bb"

  url "https://github.com/amnezia-vpn/amnezia-client/releases/download/#{version}/AmneziaVPN_#{version}_macos_x64.pkg"
  name "Amnezia VPN"
  desc "VPN client"
  homepage "https://amnezia.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "AmneziaVPN_#{version}_macos_x64.pkg"

  uninstall launchctl: [
              "AmneziaVPN",
              "AmneziaVPN-service",
            ],
            quit:      [
              "AmneziaVPN",
              "com.yourcompany.AmneziaVPN",
            ],
            pkgutil:   [
              "org.amneziavpn.AmneziaVPN",
              "org.amneziavpn.package",
            ]

  zap delete: "/Library/LaunchDaemons/AmneziaVPN.plist",
      trash:  [
        "~/Library/Caches/AmneziaVPN.ORG",
        "~/Library/Preferences/AmneziaVPN.plist",
        "~/Library/Preferences/org.amneziavpn.AmneziaVPN.plist",
      ]

  caveats do
    requires_rosetta
  end
end
