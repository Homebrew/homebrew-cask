cask "softorino-youtube-converter" do
  version "2.1.32"
  sha256 "0534745a5944cf519c4aa26574a4bcd333cc2599d12fb2e8b918de9a4cda96bd"

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
