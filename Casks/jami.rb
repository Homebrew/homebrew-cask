cask 'jami' do
  version '20190719.1319'
  sha256 'bd40a94d31371756a4d7ecdeca49e0592f0d20a786ce60589e97be7091293fb6'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
