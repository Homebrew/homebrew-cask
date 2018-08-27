cask 'savoir-faire-linux-ring' do
  version '201808241539'
  sha256 'd8a9dade5960702f1867d3e8f6264aabd896abb7679f5831941e7a0e52d9ad67'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
