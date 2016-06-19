cask 'keeweb' do
  version '1.1.4'
  sha256 '9d383d2d962e774c89b7981ab0a53f22921ad3c0558abd4136cd7b1f020cde92'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: 'ab8b788f35d9afce9b5d3d44b58c38d679a96a8497e23e8a2fb4ea9b137ddac4'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
