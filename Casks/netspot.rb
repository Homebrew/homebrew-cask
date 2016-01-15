cask 'netspot' do
  version :latest
  sha256 :no_check

  url 'http://www.netspotapp.com/download/NetSpot.dmg'
  appcast 'http://www.netspotapp.com/updates/netspot2-appcast.xml',
          :checkpoint => 'c1b1da6dc1446400687ce427905923813d1fb07a583af17129a4979a28606135'
  name 'NetSpot'
  homepage 'http://www.netspotapp.com'
  license :freemium

  app 'NetSpot.app'
end
