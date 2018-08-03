cask 'savoir-faire-linux-ring' do
  version '201808021604'
  sha256 '3338b879d68056e551d8b828c1a904d6577a331e87bfee5a5d0030f2cf06e664'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
