cask 'compositor' do
  version '0.9.8'
  sha256 '9a7ea12ce5dd3c30287ac30c6d9c67c3c55c99ff1b77fb17be80986155a249c5'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '95c7fac77e894ba228bcaa33eada1f41e83567372328554c9a993a4b79ea7e4b'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end
