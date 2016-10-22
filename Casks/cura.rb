cask 'cura' do
  version '2.3.0'
  sha256 'cacc6d0002299791150b1310d332c1e5ead694f99044d57b2076c62d10f0fb50'

  url "https://software.ultimaker.com/current/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'

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
