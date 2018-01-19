cask 'compositor' do
  version '0.9.22'
  sha256 '73a4042da1ae4cfb4e4bee54de2c6857e12ac35f538bf285996b5a2bd5c8f30b'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '8aaa4a1996a68f117d93df73a11a8c0d8cdaf4ae3b84fdf3995dcf0bccd36cee'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
