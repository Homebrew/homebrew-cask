cask "mozilla-vpn" do
  version "2.33.0"
  sha256 "aacc55b0c313e0484e42107d4bb4dd48ee972af8b0bb433bf2200cb9a0afeadf"

  url "https://archive.mozilla.org/pub/vpn/releases/#{version}/mac/MozillaVPN.pkg"
  name "Mozilla VPN"
  desc "VPN client"
  homepage "https://vpn.mozilla.org/"

  livecheck do
    url "https://vpn.mozilla.org/r/vpn/download/mac"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  pkg "MozillaVPN.pkg"

  uninstall quit:    "org.mozilla.macos.FirefoxVPN",
            pkgutil: "org.mozilla.macos.FirefoxVPN"

  zap trash: [
    "/Library/Application Support/Crash Reporter/Mozilla VPN_*",
    "/Library/Logs/DiagnosticReports/Mozilla VPN_*",
    "~/Library/Application Support/CrashReporter/Mozilla VPN_*",
    "~/Library/Application Support/Mozilla/Mozilla VPN",
    "~/Library/Application Support/mozillavpn.txt",
    "~/Library/Caches/Mozilla VPN",
    "~/Library/Saved Application State/org.mozilla.macos.FirefoxVPN.savedState",
  ]
end
