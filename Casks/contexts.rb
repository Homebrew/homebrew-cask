cask 'contexts' do
  version '2.7'
  sha256 '889130f8f4b7c27fcf8207a15ad02519edea0f05b026399dbec88f8a62d642f7'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '8d702dbd171d2cbc9b4bc8dbc62a89f6da706fb1924614f3b0c11146f1856bac'
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
