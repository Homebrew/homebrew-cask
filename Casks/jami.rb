cask 'jami' do
  version '20191110.0956'
  sha256 '095b9303e0cc09fbde5d70724765fbafe3af5268818810f37388ec85df8ad2d3'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
