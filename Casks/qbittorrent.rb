cask "qbittorrent" do
  version "4.3.4.1"
  sha256 "86f0514a973764c953f46b1d427159687d70db95c7c5e16d952fe298f43d15a1"

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg",
      verified: "sourceforge.net/qbittorrent/"
  name "qBittorrent"
  desc "Peer to peer Bitorrent client"
  homepage "https://www.qbittorrent.org/"

  livecheck do
    url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac"
    strategy :page_match
    regex(/qbittorrent-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

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
