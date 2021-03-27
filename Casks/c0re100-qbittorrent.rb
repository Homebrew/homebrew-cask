cask "c0re100-qbittorrent" do
  version "4.3.4.10"
  sha256 "6fc61b87914c13bc22427dc3a3738a6279d6b56711dc65d109d15f2e45ef6b2f"

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-#{version}.dmg"
  name "qBittorrent Enhanced Edition"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

  livecheck do
    url :url
    strategy :git
    regex(/^release-(\d+(?:\.\d+)*)$/i)
  end

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
