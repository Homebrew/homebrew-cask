cask "lyrics-master" do
  version "2.5.5.2"
  sha256 "8672ba9f1980fe7fbe8f9ad2a5d5cdeb516d922ef445bd2a36bb9cc5cbeeb4f4"

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  name "Lyrics Master"
  desc "Find and download lyrics"
  homepage "http://www.kenichimaehashi.com/lyricsmaster/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      v = page[%r{href=.*?/LyricsMaster(\d+(?:\.\d+)*)\.dmg}i, 1]
      v.chars.join(".")
    end
  end

  app "Lyrics Master.app"
end
