cask 'compositor' do
  version '1.4.0'
  sha256 'db509407c9d52ac6df7c40ceb721780c58e1fd533e7a1003f5c53a897d9e9e4d'

  url "http://compositorapp.com/updates/Compositor_#{version}.zip"
  appcast 'http://compositorapp.com/updates/appcast.xml'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
