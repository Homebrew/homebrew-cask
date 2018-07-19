cask 'savoir-faire-linux-ring' do
  version '201807190957'
  sha256 '19682599005c5b0b9d078a9959aefb98752352bbbc99b47fc8ecb99889e62bc3'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
