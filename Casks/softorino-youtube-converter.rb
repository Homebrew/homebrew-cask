cask "softorino-youtube-converter" do
  version "2.1.22"
  sha256 "f4742c1787ba586b04b500bdf91e76ec6e5ed5e6e02d4ed8bf7120be1d89dad2"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast "https://shining.softorino.com/appcast.php?abbr=syc2m"
  name "Softorino YouTube Converter"
  homepage "https://softorino.com/youtube-converter/"

  app "Softorino YouTube Converter #{version.major}.app"
end
