cask "softorino-youtube-converter" do
  version "2.1.23"
  sha256 "2e9a69c1d3060ed0baac2239f16a5b4192827f9d44d38a587a3bd2128bdd826d"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast "https://shining.softorino.com/appcast.php?abbr=syc2m"
  name "Softorino YouTube Converter"
  homepage "https://softorino.com/youtube-converter/"

  app "Softorino YouTube Converter #{version.major}.app"
end
