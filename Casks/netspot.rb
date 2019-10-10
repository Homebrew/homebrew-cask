cask 'netspot' do
  version '2.11.970'
  sha256 '280752f1939fc7d43010c270fa289678c95356b2275d0ab767ac32ddf89d08d2'

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
