cask 'contexts' do
  version '3.6.2'
  sha256 'f7598da2fe625a123a2db647f32cc67026763f5a262aec3875b5b49221efd1c2'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '6fce651add6d5e618f59d64319bab9da022008c26bcff69d269819c39b4acaee'
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
