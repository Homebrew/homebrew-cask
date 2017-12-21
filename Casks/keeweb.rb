cask 'keeweb' do
  version '1.6.1'
  sha256 '9c201acc87a696a4d1efdf970ee3177f5297ce7d954d5944947d6e762c8924a9'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: 'b19eebea7070a68a43f81f4b549f11b28985908c9e43631b3b7a2c04561cf0a4'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
