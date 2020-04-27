cask 'softorino-youtube-converter' do
  version '2.1.15'
  sha256 '6bce22d99dfc17d081f8d901cc2d3dd4bb9938de9c90793019fffe9557f81e33'

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast 'https://shining.softorino.com/appcast.php?abbr=syc2m'
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter/'

  app "Softorino YouTube Converter #{version.major}.app"
end
