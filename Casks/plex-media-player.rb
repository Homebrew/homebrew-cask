cask "plex-media-player" do
  version "2.58.0.1076-38e019da"
  sha256 "1f0bd7da73891215d44fd17b16ef20d0e9a40d7128828f1561f406221183eb53"

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name "Plex Media Player"
  desc "Home media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/3.json"
    regex(%r{/PlexMediaPlayer-(\d+(?:\.\d+)*-[0-9a-f]+)-macosx-x86_64\.zip}i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Plex Media Player.app"

  zap trash: [
    "~/Library/Application Support/Plex Media Player",
    "~/Library/Caches/Plex Media Player",
    "~/Library/Logs/Plex Media Player",
    "~/Library/Saved Application State/tv.plex.Plex Media Player.savedState",
    "~/Library/Preferences/tv.plex.Plex Media Player.plist",
  ]
end
