cask 'contexts' do
  version '3.3.1'
  sha256 '94af3664772a72e1f00ce2512cf2dba2e3091fffcb4161c3b273aac95e229791'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '528279dd76fdbb077195fac0c1ec868475daa5fa9a30a22ace53547da724d4ce'
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
