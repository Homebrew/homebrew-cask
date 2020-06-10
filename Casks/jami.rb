cask 'jami' do
  version '20200608.1958'
  sha256 'a5b126cb2c4248c73f3fac27dd4f5a694137cd939447859a8ea02a1a1fe18e9e'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
