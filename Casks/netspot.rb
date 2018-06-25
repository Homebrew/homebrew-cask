cask 'netspot' do
  version '2.8.830'
  sha256 '1888b8c359eec6ea9e5f851b742f7d4a3a98b81a78bbe0a5601b24647065fabf'

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
