cask "softorino-youtube-converter" do
  version "2.1.34"
  sha256 "83ec4d1ee654e939ae82f48a76597f3f1b63f113abb7fda1f0bd3289847a97c8"

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
