cask 'sonic-pi' do
  version '3.1.0'
  sha256 'd1e232e39f875db717f4efab85362dfaac31cafb9e555b21136d7b12720c9a30'

  url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom'
  name 'Sonic Pi'
  homepage 'https://sonic-pi.net/'

  app 'Sonic Pi.app'
end
