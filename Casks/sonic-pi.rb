cask 'sonic-pi' do
  version 'z'
  sha256 '9f0e93247f8bea1c41e37a78b000b610ca3d8df45ce93c53bc2bcf305c9abf93'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom',
          checkpoint: 'eb4ec1bd1e5fabf1dca795111628996bb3eef2696fd2ca52d866ca4f0337ded9'
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
