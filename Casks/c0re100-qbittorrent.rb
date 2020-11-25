cask "c0re100-qbittorrent" do
  version "4.3.1.10"
  sha256 "0164543174db6d0661df733eba2936750d2f53755f8c4058332b838d9679be8e"

  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-#{version}.dmg"
  appcast "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases.atom"
  name "qBittorrent Enhanced Edition"
  homepage "https://github.com/c0re100/qBittorrent-Enhanced-Edition"

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
