cask 'compositor' do
  version '0.9.16'
  sha256 '9635237cc58a73d9ac5de500c91cdcb8839a1ec1dbdcc36c34f7f8e133337482'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '85d7de3d9587c6792587b69e2f06ec766399bfe5c3c29a09373c5c2961b56794'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
