cask 'savoir-faire-linux-ring' do
  version '201808301733'
  sha256 '93f925956cf2346a4ab2c2d913c6f0b81c8c1c529fcfbc16d2dd49854f0bbf8f'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
