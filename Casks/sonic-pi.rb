cask 'sonic-pi' do
  version '3.1.0'
  sha256 'd1e232e39f875db717f4efab85362dfaac31cafb9e555b21136d7b12720c9a30'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom',
          checkpoint: 'a35a55eb864f4dd8bc2a6b9c4d9f6f7745b337f89d1ef5584e4d0b689db54814'
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
