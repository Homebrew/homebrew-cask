cask "jellyfin-media-player" do
  version "1.8.1"
  sha256 "3f555f35248010c5395f614fce6c34636a7f2fbfb9658dd2a1f1d6b10222e14c"

  url "https://github.com/jellyfin/jellyfin-media-player/releases/download/v#{version}/JellyfinMediaPlayer-#{version}-macos-notarized.dmg",
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
