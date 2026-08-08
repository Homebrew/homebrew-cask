cask "c0re100-qbittorrent" do
  version "5.2.3.10"
  sha256 "bff0dce3571ffd8ead2c55adcb44baec40a696f8fec7e422ff7908b98bd624ea"

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-Enhanced-Edition-release-#{version}-macOS-universal.dmg"
  name "qBittorrent Enhanced Edition"
  desc "Bittorrent client"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "qbittorrent"
  depends_on macos: :ventura

  app "qBittorrent.app"

  zap trash: [
    "~/.config/qBittorrent",
    "~/Library/Application Support/qBittorrent",
    "~/Library/Caches/qBittorrent",
    "~/Library/Preferences/org.qbittorrent.qBittorrent.plist",
    "~/Library/Preferences/qBittorrent",
    "~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState",
  ]
end
