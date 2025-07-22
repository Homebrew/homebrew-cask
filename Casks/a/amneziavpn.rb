cask "amneziavpn" do
  version "4.8.8.3"
  sha256 "80a021b9d658b9ad2bc68c0d2cba6a09b61156bbfc6134e518c1413ca2848020"

  url "https://github.com/amnezia-vpn/amnezia-client/releases/download/#{version}/AmneziaVPN_#{version}_macos.pkg",
      verified: "github.com/amnezia-vpn/amnezia-client/"
  name "Amnezia VPN"
  desc "VPN client"
  homepage "https://amnezia.org/"

  # Upstream tags GitHub release that can be pre-releases or betas,
  # so we need to check the download page for the latest stable version.
  # The website is hydrated with JavaScript, so we need to extract
  # the version from the JavaScript file.
  livecheck do
    url "https://amnezia.org/en/downloads"
    regex(/AmneziaVPN[._-]v?(\d+(?:\.\d+)+)[._-]macos\.pkg/i)
    strategy :page_match do |page, regex|
      js_file = page[%r{src=["']?/assets/(index.+\.js)\??["' >]}i, 1]
      next if js_file.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://amnezia.org/assets/#{js_file}")
      version_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "AmneziaVPN_#{version}_macos.pkg"

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
