cask 'airserver' do
  version '6.0.5.0'
  sha256 'e352c18c56f82d4ebae02e317b22b55fa7bafaa1402576c1fc6eb8bb56c8da6f'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '0e0900fee0323c6b3026de40bc03224a368d1998a340efb59cf5651ab156d0b6'
  name 'AirServer'
  homepage 'https://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
