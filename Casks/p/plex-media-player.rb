cask "plex-media-player" do
  version "2.58.0.1076-38e019da"
  sha256 "1f0bd7da73891215d44fd17b16ef20d0e9a40d7128828f1561f406221183eb53"

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  name "Plex Media Player"
  desc "Home media player"
  homepage "https://www.plex.tv/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "Plex Media Player.app"

  zap trash: [
    "~/Library/Application Support/Plex Media Player",
    "~/Library/Caches/Plex Media Player",
    "~/Library/Logs/Plex Media Player",
    "~/Library/Saved Application State/tv.plex.Plex Media Player.savedState",
    "~/Library/Preferences/tv.plex.Plex Media Player.plist",
  ]

  caveats do
    <<~EOS
      #{token} has been deprecated in favor of Plex for Desktop and Plex HTPC.

        brew install --cask plex
        OR
        brew install --cask plex-htpc
    EOS
  end
end
