cask 'jami' do
  version '20200422.0842'
  sha256 'fa519a3ae48ec487bdd8142b79f5c5191c8525b09911fa9c4dc19f085257e1bb'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
