cask 'cura' do
  version '2.6.1'
  sha256 'ef82c18345bdbb1492ff937a2f4e65ea7e858a131091267c5237c4261620ced9'

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
