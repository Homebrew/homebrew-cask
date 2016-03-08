cask 'near-lock' do
  version '3.2'
  sha256 'ff252ecfe5e32c8bed7d287715397812b23fc42caf50bc088a4447191a0dad25'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          checkpoint: '404bbbd3d12a196754ad79c93d252402f998fe4fad15e0b9e1af19090632c69d'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
