cask "softorino-youtube-converter" do
  version "3.4.9"
  sha256 "e0cf1a43c811fcfb7e712c21c3a137def62c7a6c2577aa25398c2670155a4232"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter2mac_#{version}.dmg"
  name "Softorino YouTube Converter"
  desc "YouTube downloader and converter"
  homepage "https://softorino.com/youtube-converter/"

  livecheck do
    url "https://shining.softorino.com/appcast.php?abbr=syc2m"
    strategy :sparkle
  end

  app "Softorino YouTube Converter 2.app"
end
