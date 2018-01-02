cask 'compositor' do
  version '0.9.20'
  sha256 'bf4dae3d47f59c472089b4a65c634d8c213474b676af96143be57ec3332e16ab'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '83aa3e1735f0e06eb4f46ac9218fb2fa1c6ffaead4c898e6f7b68f5d57b06b8e'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
