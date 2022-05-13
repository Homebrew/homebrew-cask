cask "lyrics-master" do
  version "2.5.5.1"
  sha256 "9c516a5c797effc5b9623c701483d9daeaefbedaa66e4150a9d7cb11a7165d2c"

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  name "Lyrics Master"
  desc "Find and download lyrics"
  homepage "http://www.kenichimaehashi.com/lyricsmaster/"

  livecheck do
    url "http://www.kenichimaehashi.com/lyricsmaster/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/LyricsMaster(\d+(?:\.\d+)*)\.dmg}i, 1]
      v.chars.join(".")
    end
  end

  app "Lyrics Master.app"
end
