class Slowy < Cask
  version '1.6'
  sha256 '0ecb2fbe06f3d7a050efab30d8ee6b370c83c2b44fec8b005fdc805cbc7728c7'

  url "http://slowyapp.com/downloads/Slowyapp_v#{version}.dmg"
  homepage 'http://slowyapp.com/'
  license :unknown

  app 'Slowy.app'
end
