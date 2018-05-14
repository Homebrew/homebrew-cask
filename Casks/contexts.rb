cask 'contexts' do
  version '3.7.1'
  sha256 'de5e4a660cc30276155606b539d1ae58684115a3983d69598f1505fcad499a87'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '50e36414af97aee26e27250b2a0a3e2ddbe092116d8bc3dbb81216ee3a8b6d4c'
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
