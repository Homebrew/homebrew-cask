cask 'compositor' do
  version '0.9.19'
  sha256 'c55741768c5566dda8a28231a2d4d168acbdce68373f8cde3d52e6d3245da7d9'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '37c9430436d93250c5c5937613026a5016b6a3d51b91d8c5a990bce603506a29'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
