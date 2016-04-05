cask 'keeweb' do
  version '1.1.0'
  sha256 '79dea060d7e61c9febc5f513017aa0ed89aafdb19c73ccd0ee23188b51303744'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: '9234ff5b4d71a1dd9909cd3fe022d29f7989cd628c18817cbe03a97a331b00e4'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
