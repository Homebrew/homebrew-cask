cask 'contexts' do
  version '1.9.2'
  sha256 'cf01b2c7f8ff061071f8352794dbbc8f385bc0c2089a5df30792627d587baa59'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          :sha256 => '2cf3397ce28981a07cbd93e80716ade96e5d46843dc55184d2dcc27dbed3ca26'
  name 'Contexts'
  homepage 'https://contexts.co'
  license :commercial

  app 'Contexts.app'

  uninstall :quit => 'com.contextsformac.Contexts'

  zap :delete => [
                  '~/Library/Application Support/.com.contextsformac.Contexts.plist',
                  '~/Library/Caches/com.contextsformac.Contexts',
                  '~/Library/Preferences/com.contextsformac.Contexts.plist'
                 ]
end
