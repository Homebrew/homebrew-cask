cask "spotify-now-playing" do
  version "0.7.0"
  sha256 "3771b0a35b87264f387fbd591c50fd20554508692d3060d0ddce536aac23d17c"

  url "https://github.com/davicorreiajr/spotify-now-playing/releases/download/v#{version}/spotify-now-playing-#{version}.dmg"
  name "Spotify - now playing"
  homepage "https://github.com/davicorreiajr/spotify-now-playing"

  deprecate! date: "2024-08-25", because: :unmaintained

  app "Spotify - now playing.app"

  zap trash: [
    "~/Library/Logs/Spotify - now playing",
    "~/Library/Preferences/com.electron.spotify-now-playing.plist",
  ]

  caveats do
    requires_rosetta
  end
end
