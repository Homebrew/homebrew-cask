cask 'jami' do
  version '20190725.1906'
  sha256 'db4149b44642a97087a44f69ac4e708584685fc5304a021bf1cd308fbe2f4b5e'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
