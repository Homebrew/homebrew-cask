cask 'compositor' do
  version '0.9.14'
  sha256 '8a13e8a108cf28be4353da0854c6db464c50d8ed68a558cce0586611d306117f'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '8b4e6ffe7b16267d2a0dfdd519d272ecc5217ff8fe8be7ad3af46875b5a2e934'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end
