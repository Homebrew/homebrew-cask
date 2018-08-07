cask 'savoir-faire-linux-ring' do
  version '201808061946'
  sha256 '3f66cbf492885f8451c3f4b9da7e909b75407eb544945457e1860cf99789a115'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
