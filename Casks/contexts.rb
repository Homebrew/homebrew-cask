cask 'contexts' do
  version '2.9'
  sha256 '816a2d51ebe1168fec9a5aa8d8c447ca72b66f29f6fae4f103cf00de51daaf29'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: 'b805ef491b8c9f80b25f52599d99251f2e7f36cb3b117ac7c8eb156daf0d366f'
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
