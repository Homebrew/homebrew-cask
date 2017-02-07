cask 'contexts' do
  version '2.8.1'
  sha256 'caaf5b6b38fe217c1448510a042c9ad1688c39bca4bf672042dbae44cdef1444'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '15fc9e22e429fc6cd6e00284954b2db2cff4e686942f1e937b5b9e28b901df82'
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
