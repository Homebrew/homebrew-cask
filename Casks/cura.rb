cask 'cura' do
  version '2.6.2'
  sha256 'd288f5ea5f00ae5d2c6b0a586ad28a67a7487962d5443b38a2feee7ccfdf9ed5'

  url "https://software.ultimaker.com/current/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/cura-software'

  conflicts_with cask: 'lulzbot-cura'

  app 'Cura.app'

  uninstall quit: 'nl.ultimaker.cura'

  zap delete: [
                '~/.cura',
                '~/Library/Application Support/cura',
                '~/Library/Preferences/nl.ultimaker.cura.Cura.plist',
                '~/Library/Saved Application State/nl.ultimaker.cura.savedState',
              ]
end
