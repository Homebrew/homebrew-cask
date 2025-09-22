cask "mozilla-vpn" do
  version "2.31.0"
  sha256 "f0e5802b6be51ee69664f05cdfce27fed85d32939b6dca6557ee4b334abc6c74"

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
