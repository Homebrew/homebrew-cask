cask 'netspot' do
  version :latest
  sha256 :no_check

  url 'http://www.netspotapp.com/download/NetSpot.dmg'
  appcast 'http://www.netspotapp.com/updates/netspot2-appcast.xml',
          :sha256 => 'f3a16bdd2b9fc980ab966907e3ab6ca0a267ca88ea89b21791a2606aa0bde53c'
  name 'NetSpot'
  homepage 'http://www.netspotapp.com'
  license :freemium

  app 'NetSpot.app'
end
