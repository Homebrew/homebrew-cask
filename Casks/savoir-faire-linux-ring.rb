cask 'savoir-faire-linux-ring' do
  version '201805111841'
  sha256 'e31d841ca37867757fbeca8a3ad94c697e81789d3a996f4537208ba9257ab581'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
