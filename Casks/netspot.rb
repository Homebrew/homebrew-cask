cask 'netspot' do
  version '2.7.808'
  sha256 '99aad5d676fce0214f529d5959243698c9e6d4493c6fa918658ed6ea1c31552d'

  url 'https://www.netspotapp.com/download/NetSpot.dmg'
  appcast "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml",
          checkpoint: '99c6509e9c2eee398c7f67f0b6ea65902a699af000787b335dcc7b76c6e60051'
  name 'NetSpot'
  homepage 'https://www.netspotapp.com/'

  app 'NetSpot.app'

  zap trash: [
               '~/Library/Application Support/NetSpot',
               '~/Library/Caches/com.etwok.netspotwifi',
               '~/Library/Preferences/com.etwok.netspotwifi.plist',
             ]
end
