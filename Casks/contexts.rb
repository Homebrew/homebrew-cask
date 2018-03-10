cask 'contexts' do
  version '3.5.2'
  sha256 '63bd62f567ad7bbffc8767415754bb03e6fcbd65613000296c3bec34faa990d5'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '68f8bccdcf9b62f9582f91926330f1e3b2e1874906a5dd9f0bbb6670a84796ed'
  name 'Contexts'
  homepage 'https://contexts.co/'

  app 'Contexts.app'

  uninstall quit: 'com.contextsformac.Contexts'

  zap trash: [
               '~/Library/Application Support/.com.contextsformac.Contexts.plist',
               '~/Library/Caches/com.contextsformac.Contexts',
               '~/Library/Preferences/com.contextsformac.Contexts.plist',
             ]
end
