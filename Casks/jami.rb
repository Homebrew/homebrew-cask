cask 'jami' do
  version '20191028.1657'
  sha256 'fb83c8078c2e41ac312b584ab1f0b1fb831e1574243026ad1fe1f0fd83ac6de7'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
