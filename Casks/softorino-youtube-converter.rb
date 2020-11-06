cask "softorino-youtube-converter" do
  version "2.1.26"
  sha256 "32828e4e2540349b2a01f205396533f2f43d66a1448b3ea68758d8fcdf033d6e"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast "https://shining.softorino.com/appcast.php?abbr=syc2m"
  name "Softorino YouTube Converter"
  homepage "https://softorino.com/youtube-converter/"

  app "Softorino YouTube Converter #{version.major}.app"
end
