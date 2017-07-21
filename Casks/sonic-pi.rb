cask 'sonic-pi' do
  version '3.0.0'
  sha256 '824e822c797547067952a7579b2c881fc2b90b1435f9ab1c824bfc3564869310'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version.major}.dmg"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom',
          checkpoint: '79311a5aa2256aec0bfa80f12338eace4daca987844fa9853c6a6e7de95c6a5d'
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'

  app 'Sonic Pi.app'
end
