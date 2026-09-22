cask "amneziavpn" do
  version "5.0.3.0"
  sha256 "1a205fb95565b5f6cc3e0d044c4ae6bf95f43955f3d460b1d8d5174d51ada9c9"

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
            quit:      "AmneziaVPN",
            pkgutil:   [
              "org.amneziavpn.AmneziaVPN",
              "org.amneziavpn.package",
            ]

  zap trash: [
    "~/Library/Caches/AmneziaVPN.ORG",
    "~/Library/Preferences/AmneziaVPN.plist",
    "~/Library/Preferences/org.amneziavpn.AmneziaVPN.plist",
  ]

  caveats do
    requires_rosetta
  end
end
