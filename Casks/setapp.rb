cask 'setapp' do
  version '0.7.1'
  sha256 'c98d837185804804c8bc4d9c1c68426404a889f80c1515761026a36bd675f567'

  # devmate.com/com.setapp.DesktopClient was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.setapp.DesktopClient/Setapp.dmg'
  appcast 'https://updates.devmate.com/com.setapp.DesktopClient.xml',
          checkpoint: 'f76feaa28fec954aa79b785832d0e8b3f7ff1f02a632deb04a17fb47c8b271c9'
  name 'Setapp'
  homepage 'https://setapp.com/'

  app 'Setapp.app'

  zap delete: [
                '~/Library/Application Support/Setapp',
                '~/Library/LaunchAgents/com.setapp.DesktopClient.SetappAgent.plist',
                '~/Library/LaunchAgents/com.setapp.DesktopClient.SetappUpdater.plist',
                '~/Library/Logs/Setapp',
                '~/Library/Preferences/com.setapp.DesktopClient.plist',
                '~/Library/Preferences/com.setapp.DesktopClient.SetappAgent.plist',
              ]
end
