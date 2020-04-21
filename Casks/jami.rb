cask 'jami' do
  version '20200409.1452'
  sha256 '9ddcc103a78ff9e63a922faa218d276372f602b73a30c0af8eda7342b3df192d'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
