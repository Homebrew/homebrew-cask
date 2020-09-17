cask "softorino-youtube-converter" do
  version "2.1.24"
  sha256 "e53cc1ffc6a31a1e14441c641af5a4845b04c7759ad0db6bae2eb5d1fd53cea0"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast "https://shining.softorino.com/appcast.php?abbr=syc2m"
  name "Softorino YouTube Converter"
  homepage "https://softorino.com/youtube-converter/"

  app "Softorino YouTube Converter #{version.major}.app"
end
