cask "marshallofsound-google-play-music-player" do
  version "4.7.1"
  sha256 "de6409bca32072d231ff636b68589329731923239ebf1c36e6f557fa26ebddf6"

  url "https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v#{version}/Google.Play.Music.Desktop.Player.OSX.zip",
      verified: "github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/"
  name "Google Play Music Desktop Player"
  homepage "https://www.googleplaymusicdesktopplayer.com/"

  disable! date: "2024-07-27", because: :unmaintained

  app "Google Play Music Desktop Player.app"

  uninstall signal: [
    ["TERM", "google-play-music-desktop-player"],
    ["TERM", "google-play-music-desktop-player.helper"],
  ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/google-play-music-desktop-player.sfl*",
    "~/Library/Application Support/Google Play Music Desktop Player",
    "~/Library/Application Support/google-play-music-desktop-player.ShipIt",
    "~/Library/Caches/Google Play Music Desktop Player",
    "~/Library/Caches/google-play-music-desktop-player",
    "~/Library/Caches/google-play-music-desktop-player.ShipIt",
    "~/Library/Cookies/google-play-music-desktop-player.binarycookies",
    "~/Library/Logs/Google Play Music Desktop Player",
    "~/Library/Preferences/google-play-music-desktop-player.helper.plist",
    "~/Library/Preferences/google-play-music-desktop-player.plist",
    "~/Library/Saved Application State/google-play-music-desktop-player.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
