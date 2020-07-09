cask 'softorino-youtube-converter' do
  version '2.1.20'
  sha256 '505c512d2c8cf92471a292fac2963b7f7b3b11e8200ad4c872a7806a2026f489'

  url "https://shining.softorino.com/shine_uploads/softorinoyoutubeconverter#{version.major}mac_#{version}.dmg"
  appcast 'https://shining.softorino.com/appcast.php?abbr=syc2m'
  name 'Softorino YouTube Converter'
  homepage 'https://softorino.com/youtube-converter/'

  app "Softorino YouTube Converter #{version.major}.app"
end
