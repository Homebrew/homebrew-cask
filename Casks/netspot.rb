cask 'netspot' do
  version '2.12.997'
  sha256 '6da0fb7ee0ed8b42159a57f7c032c01ec5c027f8ce7eef20557c8f12e8f6282f'

  url 'https://cdn.netspotapp.com/download/NetSpot.dmg'
  appcast "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml"
  name 'NetSpot'
  homepage 'https://www.netspotapp.com/'

  auto_updates true

  app 'NetSpot.app'

  zap trash: [
               '~/Library/Application Support/NetSpot',
               '~/Library/Caches/com.etwok.netspotwifi',
               '~/Library/Preferences/com.etwok.netspotwifi.plist',
             ]
end
