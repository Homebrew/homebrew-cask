cask "qbittorrent@lt20" do
  version "5.0.5"
  sha256 "f0180356f89590d2de639ba700813fb9ba1d90dde1af5353fc7621a048cccbb2"

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}_lt20.dmg",
      verified: "downloads.sourceforge.net/qbittorrent/qbittorrent-mac/"
  name "qBittorrent"
  desc "Edition of qBitorrent based on libtorrent-rasterbar 2.0.x"
  homepage "https://www.qbittorrent.org/"

  livecheck do
    url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac"
    regex(%r{url=.*?/qbittorrent[._-]v?(\d+(?:\.\d+)+)[._-]lt20\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "qbittorrent"
  depends_on macos: ">= :big_sur"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "qbittorrent.app", target: "qBittorrent.app"

  zap trash: [
    "~/.config/qBittorrent",
    "~/Library/Application Support/qBittorrent",
    "~/Library/Caches/qBittorrent",
    "~/Library/Preferences/org.qbittorrent.qBittorrent.plist",
    "~/Library/Preferences/qBittorrent",
    "~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState",
  ]
end
