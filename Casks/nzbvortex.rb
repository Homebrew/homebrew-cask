cask 'nzbvortex' do
  version :latest
  sha256 :no_check

  url 'http://www.nzbvortex.com/downloads/NZBVortex.dmg'
  appcast 'http://www.nzbvortex.com/update/appcast.xml',
          :checkpoint => '3a90a126c430ed60df9ecf9cc2ae1cc2691bee4ab2c4ed3bafb402d725537416'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app 'NZBVortex 3.app'
end
