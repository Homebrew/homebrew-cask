cask 'cura' do
  version '2.3.1'
  sha256 'b8f8dbd492aeadb3bab620d008bf36c51794f79b38740a9bb35c01e3fc6ecc9b'

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
