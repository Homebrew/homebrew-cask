cask 'contexts' do
  version '2.5'
  sha256 '08df69cd895314325cfc69dcea9f1f17b62d6cb212a62d02132eccea56bfdd88'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: 'a2449460fca0cf5f1259c4415d681ecdb2945329d9e90a517716fece4c5a05b4'
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
