cask 'keeweb' do
  version '1.2.4'
  sha256 '1862260a658985d43121e504944c2ff9c6758e58f72e06c47694568e745f7242'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '866cc9e0efe19e5e00be5ee1063c0c50890fe5f967c22939135b23f8217b100e'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
