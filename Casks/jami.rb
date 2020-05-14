cask 'jami' do
  version '20200513.0952'
  sha256 '746900b5d8b6268f7c79e85cbcf53f8bc0b0fcffe186cb87ae06df21772dd0dd'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
