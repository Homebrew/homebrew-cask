cask 'contexts' do
  version '2.3'
  sha256 'bc6ec52aed83aae75a9f2b6e48a79147d4d33d73a8ecd88cc0b0c43b4b628653'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '652ca54713d3eb74405cdc07607783d6a135e0baab3a1bce0c480df1b0485809'
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
