cask 'compositor' do
  version '0.9.6'
  sha256 'ce3a597efaa23450f684af996e5566ebdf414cc8a0564e76e900ecf137dc6e2a'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'fca97ef0ec6c707a7fae46a76081e9715ddf9bdc64541d36db073981b9aaea31'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end
