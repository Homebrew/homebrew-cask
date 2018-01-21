cask 'compositor' do
  version '0.9.21'
  sha256 '6818d22508a505ed1fd97a93f1b9d17a0476bb75accc1ac4457316a2267383f7'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'de74490bed40366c789402d9125bb30d738d93526ac81b288f41c4ecaaed287e'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
