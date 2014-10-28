class AudioMate < Cask
  version '2.1.1'
  sha256 '43c6b75da18f94f759f4aa220b22fd230dd840835ef858e7d265eb2322bc5faa'

  url "https://s3.amazonaws.com/apps-leftbee/products/downloadables/000/000/005/original/AudioMate-v#{version}.dmg"
  homepage 'http://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'
end
