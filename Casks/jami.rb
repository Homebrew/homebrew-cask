cask 'jami' do
  version '20200331.1220'
  sha256 '63c6db42349647645e5ebf54b32528429f5fc7f6c4785b37a7d1e3cbb6d27d25'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
