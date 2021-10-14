cask "qbittorrent" do
  if MacOS.version <= :high_sierra
    version "4.3.2"
    sha256 "dd38e80710978430694c430276a6b7749ef3533cbd0271075bc9eada484ea36b"
  else
    version "4.3.8"
    sha256 "51b2aebe38bff58d01b39214a006b53e8aece39444b57aef118c92f3232de0ac"
  end

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
