cask "softorino-youtube-converter" do
  version "2.1.25"
  sha256 "28e44b6e4a69ea364abd01295f2f9d9c31f298838d4dc8501b81c3b567a20e8a"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast "https://shining.softorino.com/appcast.php?abbr=syc2m"
  name "Softorino YouTube Converter"
  homepage "https://softorino.com/youtube-converter/"

  app "Softorino YouTube Converter #{version.major}.app"
end
