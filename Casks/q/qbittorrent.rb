cask "qbittorrent" do
  on_monterey :or_older do
    on_catalina :or_older do
      version "4.6.7"
      sha256 "0b1051af73562fc3f7c0c71abd27c3433ad238fbca0c4612f554db35be3eba6e"
    end
    on_big_sur :or_newer do
      version "5.0.5"
      sha256 "7285e98b5ef4b9a227247dcd933f1a556bfc1ff10901fc7aedb0c4b7ad082814"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "5.2.0"
    sha256 "02f38e371c833add8ac8da3e7fb33ec1f144ed1874221f42f2dc76390a72f89b"

    livecheck do
      url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac"
      regex(%r{url=.*?/qbittorrent[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    end
  end

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg",
      verified: "downloads.sourceforge.net/qbittorrent/qbittorrent-mac/"
  name "qBittorrent"
  desc "Peer to peer Bitorrent client"
  homepage "https://www.qbittorrent.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "qbittorrent@lt20"
  depends_on :macos

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
