cask 'keeweb' do
  version '1.3.3'
  sha256 '94c58fe6cc158ff901e0a0011cb97e33fc74bc1b051eb29c64c37898b1951a5c'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '67dbbf3ef00e3b891a8163f0dff154dd31e39e330f00e7a7c2fbd168c577f08f'
  name 'KeeWeb'
  homepage 'https://keeweb.info'

  auto_updates true

  app 'KeeWeb.app'
end
