cask 'contexts' do
  version '2.2.0'
  sha256 'c58bb8a22d645f045de2b7d9e3fc51be3fcee5908d6960892e429aa800d9eced'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '95b64ebe3ff0d7b86cd96ad72fbce30707e3470b71e2859530b21412938b4bc0'
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
