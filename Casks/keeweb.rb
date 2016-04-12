cask 'keeweb' do
  version '1.1.1'
  sha256 '5517999291f4271e5f3cd27cb49b5cc4dddc80349f1d29fc4a5621066e5261ae'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: '4361b6d5d12e006c73e276d75049cf4aef0da4eaaa869714b1ee827d30cdd82c'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
