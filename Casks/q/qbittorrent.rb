cask "qbittorrent" do
  on_high_sierra :or_older do
    version "4.3.2"
    sha256 "dd38e80710978430694c430276a6b7749ef3533cbd0271075bc9eada484ea36b"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "4.3.9"
    sha256 "c43323a625a937383da68e50a99d823d56e6843580dc8550dd4942683467c3ed"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "4.6.7"
    sha256 "0b1051af73562fc3f7c0c71abd27c3433ad238fbca0c4612f554db35be3eba6e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "5.0.2"
    sha256 "44de4c43d884d49f1b806a0ec641f54cf6fb2ab6ff4a9b24c3e982e7287199d3"

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

  conflicts_with cask: "qbittorrent@lt20"
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
