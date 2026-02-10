cask "amneziavpn" do
  version "4.8.12.9"
  sha256 "a40e073c60bd85e29492bff2a5c9c28e59cf0f3266c8d55ddd989803c70c0555"

  url "https://github.com/amnezia-vpn/amnezia-client/releases/download/#{version}/AmneziaVPN_#{version}_macos.pkg",
      verified: "github.com/amnezia-vpn/amnezia-client/"
  name "Amnezia VPN"
  desc "VPN client"
  homepage "https://amnezia.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "AmneziaVPN_#{version}_macos.pkg"

  uninstall launchctl: [
              "AmneziaVPN",
              "AmneziaVPN-service",
            ],
            quit:      "AmneziaVPN",
            pkgutil:   "org.amneziavpn.package"

  zap trash: [
    "~/Library/Caches/AmneziaVPN.ORG",
    "~/Library/Preferences/AmneziaVPN.plist",
    "~/Library/Preferences/org.amneziavpn.AmneziaVPN.plist",
  ]

  caveats do
    requires_rosetta
  end
end
