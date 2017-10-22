cask 'sonic-pi' do
  version '3.0.1'
  sha256 '6c8b789a8e226da6d1fe0a24110ef6f7cd2971e67cfc3339735bbccfc566ec51'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom',
          checkpoint: '8a9296c1835b8f4211157e08c06547c95513436615a5980a2832de4e23422234'
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
