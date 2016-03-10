cask 'keeweb' do
  version '1.0.4'
  sha256 '7bbd9f2a4128718c1bd37458f02e3f7c310b5ac8e16a0ddd04ce5c51efdc701a'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: '2cf6db62b2d464a986adec12773a06b79764527a7dfdef20458ed1379c18e33e'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
