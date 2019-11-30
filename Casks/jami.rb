cask 'jami' do
  version '20191125.1700'
  sha256 '4fe3bd6443d02a53e61c57b739fbec6ab5ce169484def3159d28d709e6c0b5a0'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
