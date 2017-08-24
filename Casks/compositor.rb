cask 'compositor' do
  version '0.9.7'
  sha256 '6ba5a2ae4648e3b67ecdb6ed4828c90277036c980ddaca23ea62e29555fc9b91'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'dedfcaec78ef68b6fe792ae2895acd1218586cdbe1c4d2936bf61b7150e64063'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end
