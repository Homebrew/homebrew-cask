cask 'softorino-youtube-converter' do
  version '2.1.21'
  sha256 '0a2e74677fdcd16f8b40787f6160de6326c39a9421b1e539c6e14b4bd85b0f7d'

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast 'https://shining.softorino.com/appcast.php?abbr=syc2m'
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter/'

  app "Softorino YouTube Converter #{version.major}.app"
end
