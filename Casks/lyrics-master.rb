cask "lyrics-master" do
  version "2.5.4.0"
  sha256 "c50da3270b57562bf2fe3377b3bcee04f9c3e0d4c7ed81b0ca64f375dbd720e6"

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
