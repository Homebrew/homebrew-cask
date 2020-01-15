cask 'softorino-youtube-converter' do
  version '2.1.13'
  sha256 '3886dbbc37d0c94673ab722afc57aa4c043dc191b5a72680df9f4255ce4508ab'

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast 'https://shining.softorino.com/appcast.php?abbr=syc2m'
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter/'

  app "Softorino YouTube Converter #{version.major}.app"
end
