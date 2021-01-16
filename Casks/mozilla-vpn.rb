cask "mozilla-vpn" do
  version "2.0.1"
  sha256 "03b2bd84ca2f9d79cca44f37517402fc80a6e120afe3fc39626167fdf43ed099"

  url "https://vpn.mozilla.org/downloads/vpn/mac/v#{version}/MozillaVPN.pkg"
  name "Mozilla VPN"
  desc "Fast, secure and easy to use VPN. Built by the makers of Firefox"
  homepage "https://vpn.mozilla.org/"

  livecheck do
    url "https://vpn.mozilla.org/r/vpn/download/mac"
    strategy :header_match
  end

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "MozillaVPN.pkg"

  uninstall pkgutil: "org.mozilla.macos.FirefoxVPN",
            quit:    "org.mozilla.macos.FirefoxVPN"

  zap trash: [
    "/Library/Application Support/Crash Reporter/Mozilla VPN_*",
    "/Library/Logs/DiagnosticReports/Mozilla VPN_*",
    "~/Library/Application Support/CrashReporter/Mozilla VPN_*",
    "~/Library/Application Support/mozillavpn.txt",
    "~/Library/Caches/Mozilla VPN",
    "~/Library/Saved Application State/org.mozilla.macos.FirefoxVPN.savedState",
  ]
end
