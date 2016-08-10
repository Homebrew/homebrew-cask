cask 'contexts' do
  version '2.4'
  sha256 'ebe75e2d5e06f17cef50c4675ce9676f22ea830eed698e765f91addf9c86fa01'

  url "https://contexts.co/releases/Contexts-#{version}.zip"
  appcast 'https://contexts.co/appcasts/stable.xml',
          checkpoint: '188a3f32e1e09ca259c53ee4ca5b6abf9ad65381a25e5465e7821b1d8f8dd4b1'
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
