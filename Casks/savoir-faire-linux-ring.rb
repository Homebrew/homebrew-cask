cask 'savoir-faire-linux-ring' do
  version '201807121747'
  sha256 '981c8e3500ea45be3609d81871a019d9b1626743d3e1ea191d7aa2f66412e977'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
