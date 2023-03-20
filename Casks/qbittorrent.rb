cask "qbittorrent" do
  on_high_sierra :or_older do
    version "4.3.2"
    sha256 "dd38e80710978430694c430276a6b7749ef3533cbd0271075bc9eada484ea36b"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "4.5.2"
    sha256 "ff45669f6baeb0f3afd7945f06ffdd32b8081d640746b63013d3ae6656521e8d"

    livecheck do
      url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac"
      strategy :page_match
      regex(/qbittorrent[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end
  end

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg",
      verified: "sourceforge.net/qbittorrent/"
  name "qBittorrent"
  desc "Peer to peer Bitorrent client"
  homepage "https://www.qbittorrent.org/"

  conflicts_with cask: "homebrew/cask-versions/qbittorrent-lt20"
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
