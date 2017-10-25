cask 'compositor' do
  version '0.9.13'
  sha256 'abb96825560e865c82b7d4f24cffbcfb4d24b79833b0e4ec81bf27766ee107cd'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '651ee81e0edf3d86849ab8bf0f811a09cc5686d279e44ee23446949752c74c39'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end
