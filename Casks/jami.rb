cask 'jami' do
  version '20200511.2136'
  sha256 '3c5b94cd9623e6655112dd9a09f484065e350516cef18d405439fd5306aca3c9'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
