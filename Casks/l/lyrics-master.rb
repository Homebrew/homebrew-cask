cask "lyrics-master" do
  version "2.5.5.2"
  sha256 "8672ba9f1980fe7fbe8f9ad2a5d5cdeb516d922ef445bd2a36bb9cc5cbeeb4f4"

  url "http://www.kenichimaehashi.com/lyricsmaster/download/LyricsMaster#{version.no_dots}.dmg"
  name "Lyrics Master"
  desc "Find and download lyrics"
  homepage "http://www.kenichimaehashi.com/lyricsmaster/"

  livecheck do
    url :homepage
    regex(/href=.*?LyricsMaster[._-]?v?(\d+(?:\.\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].chars.join(".")
    end
  end

  app "Lyrics Master.app"

  zap trash: "~/Library/Preferences/preferences.lyricsmaster"
end
