cask 'contexts' do
  version '3.1.1'
  sha256 'a3e8cc2d58c83aed137db91a6c862b0ec3dd95ef5095b593a40e8d4897d063cd'

  url "https://contexts.co/releases/Contexts-#{version}.dmg"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '18ea9561873f97ef4864e8160bd87fd87a719cd6df655a1cf278a37bbf47c8b3'
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
