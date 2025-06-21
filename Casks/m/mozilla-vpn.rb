cask "mozilla-vpn" do
  version "2.29.0"
  sha256 "521e50a62c760a91ff247bc773bf13e936b3a6b300d96206700ed65a01aa05c5"

  url "https://archive.mozilla.org/pub/vpn/releases/#{version}/mac/MozillaVPN.pkg"
  name "Mozilla VPN"
  desc "VPN client"
  homepage "https://vpn.mozilla.org/"

  livecheck do
    url "https://vpn.mozilla.org/r/vpn/download/mac"
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

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
