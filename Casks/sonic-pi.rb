cask 'sonic-pi' do
  version '3.0.1'
  sha256 'd9eea57df86da3d39a2a068358fcc256e0dd0181a110fa2d83ad16ad153b10fd'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom',
          checkpoint: '8a9296c1835b8f4211157e08c06547c95513436615a5980a2832de4e23422234'
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
