cask "c0re100-qbittorrent" do
  version "4.4.1.10"
  sha256 "49e5e359418e7639c2351c5e8e1d5733a8d8f6c905025468ec2206e92ad5d716"

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent_enhanced-#{version}.dmg"
  name "qBittorrent Enhanced Edition"
  desc "Bittorrent client"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "qbittorrent"
  depends_on macos: ">= :sierra"

  app "qbittorrent.app"

  zap trash: [
    "~/.config/qBittorrent",
    "~/Library/Application Support/qBittorrent",
    "~/Library/Caches/qBittorrent",
    "~/Library/Preferences/org.qbittorrent.qBittorrent.plist",
    "~/Library/Preferences/qBittorrent",
    "~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState",
  ]
end
