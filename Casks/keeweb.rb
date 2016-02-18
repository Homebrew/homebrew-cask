cask 'keeweb' do
  version '1.0.2'
  sha256 'f19f544c01b8c5d9941f4f23207fde492698dc81024b62420c7896a50d75e311'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: '7d11b6e586d40a9395794e22c8bda0440f20039c18f867be4bfe7ac60528a7be'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
