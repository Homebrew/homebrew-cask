cask "lyrics-master" do
  version "2.5.3.0"
  sha256 "2e590f3c506ccdd70113a827ff63bd996768bc145b69163cbaf22aa3dce6c396"

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
