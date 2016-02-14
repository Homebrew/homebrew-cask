cask 'keeweb' do
  version '1.0.1'
  sha256 'be0cddeb74e5a4f611d449781dad6c43f5aa0c8b3098a1651bbcf37cb38f1dd1'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: '7151b46f830090ec0ca0092e067e62f33fb0e8787b4686e9d6f5e80d6bb2d2e2'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
