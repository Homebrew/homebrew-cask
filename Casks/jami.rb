cask 'jami' do
  version '20200430.1209'
  sha256 '3e015f00e4f10a6f850b95169637028a2e7df67b4796cbf5e47b8bb6d89d2471'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
