cask 'nzbvortex' do
  version '3.2.3'
  sha256 'bef3d0a6297bb4fff98361d4108061b7fff0c8d6ab1f2e2d88a56e67d9fa00b8'

  url 'http://www.nzbvortex.com/downloads/NZBVortex.dmg'
  appcast 'http://www.nzbvortex.com/update/appcast.xml',
          checkpoint: '3a90a126c430ed60df9ecf9cc2ae1cc2691bee4ab2c4ed3bafb402d725537416'
  name 'NZBVortex'
  homepage 'http://www.nzbvortex.com/'
  license :commercial

  app 'NZBVortex 3.app'
end
