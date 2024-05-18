cask "jellyfin-media-player" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.10.1"
  sha256 arm:   "254c2c877ffd248366b200c15c92a97d768e002993dfe870c19f5c1db7389ab3",
         intel: "5806bd43601a67f901e9c4a72d8a540d880c2dcef4792df6fd4d46b74082bf9d"

  url "https://github.com/jellyfin/jellyfin-media-player/releases/download/v#{version}/JellyfinMediaPlayer-#{version}-#{arch}.dmg",
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
