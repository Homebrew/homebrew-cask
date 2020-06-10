cask 'jami' do
  version '20200529.1006'
  sha256 'dfc7ec4963344a7e4ab9e60a38d8cbea9f269921a8960bce5f44b021ec817f84'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
