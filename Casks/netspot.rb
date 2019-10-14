cask 'netspot' do
  version '2.11.972'
  sha256 'c0a6b63839001720a4d77b7123f9c9df065adb53bd3c6895933770bec8efa2b2'

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
