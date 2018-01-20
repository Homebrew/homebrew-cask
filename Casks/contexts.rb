cask 'contexts' do
  version '3.4.2'
  sha256 'b62bb85cc26346a14a87aea55fdc439885216107d357ed201e381a3f89b2ea05'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: 'f9fb1d59d4e7afce1da6e3c6443a71d608f9ff207c86c8330e9e40dc945b78a3'
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
