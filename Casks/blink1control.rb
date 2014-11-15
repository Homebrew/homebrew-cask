cask :v1 => 'blink1control' do
  version '1.91'
  sha256 'fc3624a041f561f086cdce95bd70470b072c9b586e9ee1247d88b78e6abce094'

  url "https://github.com/todbot/blink1/releases/download/v#{version}/Blink1Control-mac.zip"
  homepage 'http://blink1.thingm.com/'
  license :oss

  app 'Blink1Control.app'
end
