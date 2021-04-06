cask "lyrics-master" do
  version "2.5.3.0"
  sha256 "2e590f3c506ccdd70113a827ff63bd996768bc145b69163cbaf22aa3dce6c396"

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  appcast "http://www.kenichimaehashi.com/lyricsmaster/",
          must_contain: version.major_minor_patch
  name "Lyrics Master"
  homepage "http://www.kenichimaehashi.com/lyricsmaster/"

  app "Lyrics Master.app"
end
