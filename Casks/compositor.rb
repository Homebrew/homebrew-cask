cask 'compositor' do
  version '0.9.23'
  sha256 '9c43e2f001db6124b5763a3b3d22c53a8795b33039404402987c514e8e516fc0'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '2a1ab1462b5a78b9225ec8688966530b4936eb992fea1f7434616762caf1ac81'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
