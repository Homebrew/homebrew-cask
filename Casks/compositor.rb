cask 'compositor' do
  version '0.9.11'
  sha256 '3f67e7366dd19be708d78be1643011b62bca1171757eb327917824f4fb536353'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'd2118fafc69857d046943962361123ffc97838b877bb217da2e6e4745ee278e8'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end
