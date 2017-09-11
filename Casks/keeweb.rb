cask 'keeweb' do
  version '1.5.6'
  sha256 '06d245a0c1245331943404282cc7cdfc6fbbdf74ce5922da65f7d0d0b2eb7e7b'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '3f58da4a70b6d2ccd5719552670a83fcced02e328e0a5c97425ec855f3e04fee'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
