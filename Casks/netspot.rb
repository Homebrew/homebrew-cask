cask 'netspot' do
  version '2.4.623'
  sha256 '11a628cb56d30f6b31f938929985c7e649eb30030c0c391b952230195ca40f2d'

  url 'https://www.netspotapp.com/download/NetSpot.dmg'
  appcast "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml",
          checkpoint: 'c1b1da6dc1446400687ce427905923813d1fb07a583af17129a4979a28606135'
  name 'NetSpot'
  homepage 'https://www.netspotapp.com/'

  app 'NetSpot.app'
end
