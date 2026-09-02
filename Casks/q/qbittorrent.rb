cask "qbittorrent" do
  arch intel: "x86_64"
  os macos: "mac", linux: "appimage"
  url_end = on_system_conditional macos: ".dmg", linux: "_#{arch}.AppImage"

  on_monterey :or_older do
    version "5.0.5"
    sha256 "7285e98b5ef4b9a227247dcd933f1a556bfc1ff10901fc7aedb0c4b7ad082814"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "5.2.3"
    sha256 "9e37f6c7ff848c7bdd3c10167614c0cb78c00e2ddcc323f1ad3ac6c008a0481f"

    livecheck do
      url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-#{os}"
      regex(%r{url=.*?/qbittorrent[._-]v?(\d+(?:\.\d+)+)#{url_end}}i)
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
    sha256 "c1467a713929323aaf253e021449992ac299a6c830a933643b023007d8641ed0"

    livecheck do
      url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-#{os}"
      regex(%r{url=.*?/qbittorrent[._-]v?(\d+(?:\.\d+)+)#{url_end}}i)
    end

    depends_on arch: :x86_64

    app_image "qbittorrent-#{version}_#{arch}.AppImage", target: "qBittorrent.AppImage"
  end

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-#{os}/qbittorrent-#{version}/qbittorrent-#{version}#{url_end}"
  name "qBittorrent"
  desc "Peer to peer Bitorrent client"
  homepage "https://www.qbittorrent.org/"

  conflicts_with cask: "qbittorrent@lt20"
end
