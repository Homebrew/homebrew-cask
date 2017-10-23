cask 'contexts' do
  version '3.2.0'
  sha256 'd4278fd4cb61627ac92b7fd9c82f9a60a0d0a5aed9f99cf18002037089d79786'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '4e11f2e5f61dca3aada114425a8b496a2cc53336f707501eb27bd187f51bece1'
  name 'Contexts'
  homepage 'https://contexts.co/'

  app 'Contexts.app'

  uninstall quit: 'com.contextsformac.Contexts'

  zap delete: [
                '~/Library/Application Support/.com.contextsformac.Contexts.plist',
                '~/Library/Caches/com.contextsformac.Contexts',
                '~/Library/Preferences/com.contextsformac.Contexts.plist',
              ]
end
