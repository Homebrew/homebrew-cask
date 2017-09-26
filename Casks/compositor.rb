cask 'compositor' do
  version '0.9.10'
  sha256 '498977bb8c560cc618905662a8b908f3d7f8ed6d421f7884df2d4d5de94b961b'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '12862f51c50d1e295ce676a478ae08da124ebbda4a9cffe02ffbed09038e8d76'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end
