cask 'savoir-faire-linux-ring' do
  version '201802231805'
  sha256 '0dd8605a408552faab7aa4f2cc29ee076ebac9bf95101b657d1842039ca0e6eb'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          checkpoint: '7803aa2cc88bf9357de9c9cc28d359baf3c93ba7a40787c7ceba6f44d81d612d'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
