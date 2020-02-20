cask 'softorino-youtube-converter' do
  version '2.1.14'
  sha256 '6b88e76c6b686c7a00982aaede60a171894ca726ae9020d2be4b7a6ce3ae4dff'

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast 'https://shining.softorino.com/appcast.php?abbr=syc2m'
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter/'

  app "Softorino YouTube Converter #{version.major}.app"
end
