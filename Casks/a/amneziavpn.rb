cask "amneziavpn" do
  version "5.0.1.5"
  sha256 "8e88c02605375400a7972ee5205cc6bcd223e555757522fbc97fe3c9a4946084"

  url "https://github.com/amnezia-vpn/amnezia-client/releases/download/#{version}/AmneziaVPN_#{version}_macos_x64.pkg",
      verified: "github.com/amnezia-vpn/amnezia-client/"
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
