cask "amneziavpn" do
  version "4.8.9.2"
  sha256 "f2aec5e2bd5f0bf31d0acd15cfb263dca005fd914c2157c105e060d5e10e55f4"

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
