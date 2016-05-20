cask 'airserver' do
  version '6.0.7'
  sha256 'ed0e11a9ea1966a26e94f292ba96755d5cb3d1816d5a87deaaa327ed16b5bc4c'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: 'cb5082a38ce39fa9429532e3a9de301e7eff86d430f1c0f37bbcbd29239b489f'
  name 'AirServer'
  homepage 'https://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
