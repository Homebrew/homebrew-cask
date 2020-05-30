cask 'softorino-youtube-converter' do
  version '2.1.16'
  sha256 '4a2f74101feebfce6ae3540e70db66376adff63501506c8e20aeec291cd5f13b'

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast 'https://shining.softorino.com/appcast.php?abbr=syc2m'
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter/'

  app "Softorino YouTube Converter #{version.major}.app"
end
