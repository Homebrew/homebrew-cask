cask "jellyfin-media-player" do
  version "1.9.1"
  sha256 "6ed5f5c1489c177de45f46fdbeefee8cc9eee7faff75d03e3840f522849674d2"

  url "https://github.com/jellyfin/jellyfin-media-player/releases/download/v#{version}/JellyfinMediaPlayer-#{version}-macos-notarized.dmg",
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
