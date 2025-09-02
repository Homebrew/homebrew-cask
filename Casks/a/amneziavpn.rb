cask "amneziavpn" do
  version "4.8.10.0"
  sha256 "ff6de4f03606aaf2abccebc032a09a0e81577f2d48411f5c6de8856a8af9fefc"

  url "https://github.com/amnezia-vpn/amnezia-client/releases/download/#{version}/AmneziaVPN_#{version}_macos.zip",
      verified: "github.com/amnezia-vpn/amnezia-client/"
  name "Amnezia VPN"
  desc "VPN client"
  homepage "https://amnezia.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  pkg "AmneziaVPN.pkg"

  uninstall launchctl: ["AmneziaVPN-service", "AmneziaVPN"],
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
