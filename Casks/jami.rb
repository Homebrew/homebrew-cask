cask 'jami' do
  version '20190902.1120'
  sha256 'a5e0ce5978dce7285a07aa3b2e272f8f647a7f5610db2fbb26f7d8c94b879485'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
