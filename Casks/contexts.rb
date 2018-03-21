cask 'contexts' do
  version '3.5.3'
  sha256 '464e0b36e36261b5ad280283a6894337495b791b5bb9ea29f8462cb3a116678b'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '82f8ed707bed6e2df58251bc8c9ecf91c8645d4401dd7cae92d88b19994a2b89'
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
