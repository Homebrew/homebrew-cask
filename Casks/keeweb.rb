cask 'keeweb' do
  version '1.1.4'
  sha256 '9d383d2d962e774c89b7981ab0a53f22921ad3c0558abd4136cd7b1f020cde92'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: 'aae9173df7db821b39612108ef7c45ccaaa66f7f16d76749a3edb3e2a47aa346'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
