cask "jellyfin-media-player" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.11.0"
  sha256 arm:   "6007e25c0d8552d8bf51153e95553510abcb48e89f8b4f0980aa301fa412eba1",
         intel: "b7598ae1555219bd2d2296c806718b03c71cbdd775b4e84ec7ccb8551d08a248"

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
