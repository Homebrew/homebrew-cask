cask 'netspot' do
  version '2.11.967'
  sha256 '23c6ea7169be991ac8d0b1975682a2dc21b2b852d34aea4580dc91b307860b89'

  url 'https://www.netspotapp.com/download/NetSpot.dmg'
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
