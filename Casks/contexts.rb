cask 'contexts' do
  version '3.4.4'
  sha256 '92b6ce49bc43639afcdfd9a679f19db4cf4f69e0b2900e96763165fb47268873'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '21a0a7cd8403ee8921aba9486a0b7b701a5afd7104cc3d1739b61276a5e6f1f7'
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
