cask "c0re100-qbittorrent" do
  version "4.2.5.15"
  sha256 "d728bc602ac0cc809d1ae7b38a24f425b910030874d0297d74e2fc83bbb91234"

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
