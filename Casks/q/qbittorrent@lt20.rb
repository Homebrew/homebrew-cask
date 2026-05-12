cask "qbittorrent@lt20" do
  on_monterey :or_older do
    on_catalina :or_older do
      version "4.6.7"
      sha256 "334b1c45f744b211dfcc81f18c3e2fb07510f5f725c0ef19e9ab2da6b73dcf2b"
    end
    on_big_sur :or_newer do
      version "5.0.5"
      sha256 "f0180356f89590d2de639ba700813fb9ba1d90dde1af5353fc7621a048cccbb2"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "5.2.0"
    sha256 "410f8441a0b830a3fc807fe8f3f949e554b02003470c167efd97e281930a3755"

    livecheck do
      url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac"
      regex(%r{url=.*?/qbittorrent[._-]v?(\d+(?:\.\d+)+)[._-]lt20\.dmg}i)
    end
  end

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}_lt20.dmg",
      verified: "downloads.sourceforge.net/qbittorrent/qbittorrent-mac/"
  name "qBittorrent"
  desc "Edition of qBitorrent based on libtorrent-rasterbar 2.0.x"
  homepage "https://www.qbittorrent.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "qbittorrent"
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
