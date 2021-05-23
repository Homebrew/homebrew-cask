cask "softorino-youtube-converter" do
  version "2.1.31"
  sha256 "103d370bdceff132bee3a93ac9eebf280b9117f7362a5c855a07b474feae7188"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  name "Softorino YouTube Converter"
  desc "YouTube downloader and converter"
  homepage "https://softorino.com/youtube-converter/"

  livecheck do
    url "https://shining.softorino.com/appcast.php?abbr=syc2m"
    strategy :sparkle
  end

  app "Softorino YouTube Converter #{version.major}.app"
end
