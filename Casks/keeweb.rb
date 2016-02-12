cask 'keeweb' do
  version '1.0.0'
  sha256 '48fd9c20169e28c699306782daf6bc6592ea94e54d65ab32e1f38fa3384e6295'

  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
    checkpoint: '72151b698499fafca069338cfecad3d0c3044da3409f538646af68d76f4d6bd3'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit
  auto_updates true

  app 'KeeWeb.app'
end
