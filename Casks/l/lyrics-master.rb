cask "lyrics-master" do
  version "2.5.5.4"
  sha256 "99743770dbc45f465a00610f6f00206be1648e4ea15c1c68a43a14a895fae97a"

  url "https://github.com/LyricsMaster/releases/releases/download/v#{version}/LyricsMaster#{version.no_dots}-macos.dmg",
      verified: "github.com/LyricsMaster/releases/"
  name "Lyrics Master"
  desc "Find and download lyrics"
  homepage "https://lyricsmaster.app/desktop/"

  depends_on macos: ">= :mojave"

  app "Lyrics Master.app"

  zap trash: [
    "~/Library/Caches/com.kenichimaehashi.lyricsmaster",
    "~/Library/Preferences/preferences.lyricsmaster",
    "~/Library/WebKit/com.kenichimaehashi.lyricsmaster",
  ]
end
