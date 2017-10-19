cask 'compositor' do
  version '0.9.12'
  sha256 '687926305522eb51ad6ffa6a760e012e809cbd9dfc97b1094bca9d72ae5891bf'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'b30d4bf758f57f7fb1492d89cdde068799f2f4f85a6fa30d479b94c9f59939e6'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end
