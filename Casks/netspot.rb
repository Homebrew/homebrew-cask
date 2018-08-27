cask 'netspot' do
  version '2.9.919'
  sha256 '93e44f01e5f4cff1498ce289605319f26ab56cd9f34774ec9657c99619a6dc0e'

  url 'https://www.netspotapp.com/download/NetSpot.dmg'
  appcast "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml"
  name 'NetSpot'
  homepage 'https://www.netspotapp.com/'

  app 'NetSpot.app'

  zap trash: [
               '~/Library/Application Support/NetSpot',
               '~/Library/Caches/com.etwok.netspotwifi',
               '~/Library/Preferences/com.etwok.netspotwifi.plist',
             ]
end
