cask 'sonic-pi' do
  version '2.10.0'
  sha256 '4539cbd70f1e0d347c27231f741a245551c0d50f10e987761b9b7567ba0d82fe'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
