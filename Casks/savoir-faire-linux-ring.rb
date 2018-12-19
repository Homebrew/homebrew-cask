cask 'savoir-faire-linux-ring' do
  version '201812181300'
  sha256 '4730fe08a824a3263899af96013dda3ff813c4bfe5a4167f35a70a8072bfc77f'

  url "https://dl.ring.cx/mac_osx/jami-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
