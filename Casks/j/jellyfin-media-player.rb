cask "jellyfin-media-player" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.10.0"
  sha256 arm:   "1fd584132af2107d7aaeb46c66a5b05ba78a2f56150b6f54482abe6bb705acd0",
         intel: "dda9b26971a8c25eea9e759ab89aa8bf5abd4e4b805dc37827d13bddc6da1ab5"

  url "https://github.com/jellyfin/jellyfin-media-player/releases/download/v#{version}/JellyfinMediaPlayer-#{arch}.dmg",
      verified: "github.com/jellyfin/jellyfin-media-player/"
  name "Jellyfin Media Player"
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
