cask 'savoir-faire-linux-ring' do
  version '201805111841'
  sha256 'e31d841ca37867757fbeca8a3ad94c697e81789d3a996f4537208ba9257ab581'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          checkpoint: '04d0c5303f3b1ad6225e21b5981de1b18442dcf1d51864e55cc9203103a3f1a7'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
