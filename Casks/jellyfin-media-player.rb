cask "jellyfin-media-player" do
  version "1.7.0"
  sha256 "4f6b41886b2faf829f93a89a544168374e5908e1e3beacd75a87d86ed0eb3dc5"

  url "https://github.com/jellyfin/jellyfin-media-player/releases/download/v#{version}/JellyfinMediaPlayer-#{version}-macos.dmg",
      verified: "github.com/jellyfin/jellyfin-media-player/"
  name "jellyfin-media-player"
  desc "Jellyfin desktop client"
  homepage "https://jellyfin.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Jellyfin Media Player.app"

  zap trash: [
    "~/Library/Application Support/Jellyfin Media Player",
    "~/Library/Caches/Jellyfin Media Player",
    "~/Library/Logs/Jellyfin Media Player",
    "~/Library/Preferences/org.jellyfin.Jellyfin Media Player.plist",
    "~/Library/Saved Application State/tv.jellyfin.player.savedState",
  ]
end
