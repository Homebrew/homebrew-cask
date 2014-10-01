class Blink1control < Cask
  version '1.91'
  sha256 'fc3624a041f561f086cdce95bd70470b072c9b586e9ee1247d88b78e6abce094'

  homepage 'http://blink1.thingm.com/'
  license :oss
  url "https://github.com/todbot/blink1/releases/download/v#{version}/Blink1Control-mac.zip"

  app 'Blink1Control.app'
end
