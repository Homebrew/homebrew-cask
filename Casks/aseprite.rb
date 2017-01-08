cask 'aseprite' do
  version '1.1.13'
  sha256 '2a0903a9d09c6d90147566ab3e87678f54025f537d260119d26bc5f855fbc87e'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'b2296a003cd21e360a0035d7097bd25d8585b449ce2fe4e52bd4b089e1249d5b'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
