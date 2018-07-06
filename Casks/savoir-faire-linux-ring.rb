cask 'savoir-faire-linux-ring' do
  version '201806152252'
  sha256 '58cd68bbffe27c5d9996571257021123ca0c6a14f6219d1e0db53090ecd18aba'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
