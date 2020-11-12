cask "softorino-youtube-converter" do
  version "2.1.27"
  sha256 "daca7ee5d2082386015b1b7349c3e7608d75c925d0b7f43f157ec8b6112efc0c"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast "https://shining.softorino.com/appcast.php?abbr=syc2m"
  name "Softorino YouTube Converter"
  homepage "https://softorino.com/youtube-converter/"

  app "Softorino YouTube Converter #{version.major}.app"
end
