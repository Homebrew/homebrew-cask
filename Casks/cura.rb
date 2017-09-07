cask 'cura' do
  version '2.7.0'
  sha256 '01a15bd937b9bf39442c0368566c4d953cba6254814af3083084e96fb46cd745'

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
