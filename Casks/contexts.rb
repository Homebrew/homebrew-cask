cask 'contexts' do
  version '2.1.0'
  sha256 'ca4f21daadd52193f2de5df8a75e50c4cb6ecbd7745b294555dc32d8ab16318b'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '12ded76840338df70516ef2515f9b0d56d22da7f7a93646771f524c85cf3df67'
  name 'Contexts'
  homepage 'https://contexts.co'
  license :commercial

  app 'Contexts.app'

  uninstall quit: 'com.contextsformac.Contexts'

  zap delete: [
                '~/Library/Application Support/.com.contextsformac.Contexts.plist',
                '~/Library/Caches/com.contextsformac.Contexts',
                '~/Library/Preferences/com.contextsformac.Contexts.plist',
              ]
end
