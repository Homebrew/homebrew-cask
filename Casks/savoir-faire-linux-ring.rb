cask 'savoir-faire-linux-ring' do
  version '201809041139'
  sha256 'cdd463bd521230616ac36b0b508ebe41d8d0c4e649ae2347732c03cdf01caf8f'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
