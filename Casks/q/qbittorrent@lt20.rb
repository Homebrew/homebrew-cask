cask "qbittorrent@lt20" do
  arch intel: "x86_64"
  os macos: "mac", linux: "appimage"
  url_end = on_system_conditional macos: ".dmg", linux: "_#{arch}.AppImage"

  on_monterey :or_older do
    version "5.0.5"
    sha256 "f0180356f89590d2de639ba700813fb9ba1d90dde1af5353fc7621a048cccbb2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "5.2.3"
    sha256 "4dde4f357cf8d7271f7e25140d2986d076126566edf2d2ad441cdd382b2a333d"

    livecheck do
      url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-#{os}"
      regex(%r{url=.*?/qbittorrent[._-]v?(\d+(?:\.\d+)+)[._-]lt20#{url_end}}i)
    end
  end
  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
  on_linux do
    version "5.2.3"
    sha256 "71b3a861753674d941e517feff72ed47d1a0e5c01a0a39e9c3d7f7ccc3f80c63"

    livecheck do
      url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-#{os}"
      regex(%r{url=.*?/qbittorrent[._-]v?(\d+(?:\.\d+)+)[._-]lt20#{url_end}}i)
    end

    depends_on arch: :x86_64

    app_image "qbittorrent-#{version}_lt20_#{arch}.AppImage", target: "qBittorrent.AppImage"
  end

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-#{os}/qbittorrent-#{version}/qbittorrent-#{version}_lt20#{url_end}"
  name "qBittorrent"
  desc "Edition of qBitorrent based on libtorrent-rasterbar 2.0.x"
  homepage "https://www.qbittorrent.org/"

  conflicts_with cask: "qbittorrent"
end
