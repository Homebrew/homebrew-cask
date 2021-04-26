cask "softorino-youtube-converter" do
  version "2.1.29"
  sha256 "0be3c306b34e36ed4675aa3dd9b1dd3a9f8a85193c1f91b5060603963468e8c7"

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
