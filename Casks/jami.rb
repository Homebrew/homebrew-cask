cask 'jami' do
  version '20191112.1050'
  sha256 '63002b9d1c705d1ba92a7997e599c9b17ec9349371d93831b4e7f5addfb5727a'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
