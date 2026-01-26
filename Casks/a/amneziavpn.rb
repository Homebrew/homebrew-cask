cask "amneziavpn" do
  version "4.8.11.4"
  sha256 "9534563bd7810ab7bf9f920dad2ec3efc78095b4d170bdbd79ba16cbb8e93dbb"

  url "https://github.com/amnezia-vpn/amnezia-client/releases/download/#{version}/AmneziaVPN_#{version}_macos.zip",
      verified: "github.com/amnezia-vpn/amnezia-client/"
  name "Amnezia VPN"
  desc "VPN client"
  homepage "https://amnezia.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "AmneziaVPN.pkg"

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
