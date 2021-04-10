cask "softorino-youtube-converter" do
  version "2.1.28"
  sha256 "6eb84150e67980517008a04035a8e7a1b0b218e4f9f2e0f59cead8eff4f60704"

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  name "Softorino YouTube Converter"
  homepage "https://softorino.com/youtube-converter/"

  livecheck do
    url "https://shining.softorino.com/appcast.php?abbr=syc2m"
    strategy :page_match
    regex(%r{href=.*?/softorinoyoutubeconverter#{version.major}mac_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Softorino YouTube Converter #{version.major}.app"
end
