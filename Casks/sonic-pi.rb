cask 'sonic-pi' do
  version '2.11.1'
  sha256 'fbe9d5939d296b9ffae69432dffb6a6b1b4e06d5d89754d3c110a5cfdd5cd954'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
