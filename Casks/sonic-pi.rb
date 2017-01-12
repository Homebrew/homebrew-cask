cask 'sonic-pi' do
  version '2.11.1'
  sha256 'fbe9d5939d296b9ffae69432dffb6a6b1b4e06d5d89754d3c110a5cfdd5cd954'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom',
          checkpoint: 'de0a077ee24d16baa40620e5cabc991c2b8dcfabf71893b4d014c384a442ed9c'
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
