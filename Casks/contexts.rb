cask 'contexts' do
  version '3.4.1'
  sha256 '5b7080f67b987d00fb21108ea24e3403adbc45282fa3b03016d69f8444e049e2'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '7a133c1cd5180f128c721e3bba7f1aa361ce5d53a36b99fd73018e8024c97643'
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
