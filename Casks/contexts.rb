cask 'contexts' do
  version '3.0.1'
  sha256 'ce0c36f282d4d87267f5218d298e32f3dfc4827dd790a789fb6f505b32e4e6d7'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '16223ae7b370f760ded25abfa5d66e23de3776ebad193ce5760c9435271e7fb0'
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
