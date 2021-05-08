cask "jellyfin-media-player" do
  version "1.6.0"
  sha256 "130eefdc149fd8a257c6f49b16251ec0eb79d0f39cbae407ce7a01f2efd4ead5"

  url "https://github.com/jellyfin/jellyfin-media-player/releases/download/v#{version}/JellyfinMediaPlayer-#{version}-macos.dmg",
      verified: "github.com/jellyfin/jellyfin-media-player/"
  name "jellyfin-media-player"
  desc "Jellyfin desktop client"
  homepage "https://jellyfin.org/"

  app "Jellyfin Media Player.app"

  zap trash: [
    "~/Library/Application Support/Jellyfin Media Player",
    "~/Library/Caches/Jellyfin Media Player",
    "~/Library/Logs/Jellyfin Media Player",
    "~/Library/Preferences/org.jellyfin.Jellyfin Media Player.plist",
    "~/Library/Saved Application State/tv.jellyfin.player.savedState",
  ]
end
