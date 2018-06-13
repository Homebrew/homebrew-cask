cask 'savoir-faire-linux-ring' do
  version '201806130940'
  sha256 '786f0bc5dbfc68630d759923656bc891874188dde5409e295ffa701aee3598d6'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
