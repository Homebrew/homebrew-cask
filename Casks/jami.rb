cask 'jami' do
  version '20190809.1643'
  sha256 'cb3e454f5f1fed31953fdeadb94d269da31c8994a304a46bca3dd71b65787c06'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
