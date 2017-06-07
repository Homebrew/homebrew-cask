cask 'setapp' do
  version '1.1.2'
  sha256 '02842ae2002e4549c87a225a3ad68458cbace60c22f0fe3f533a034e3d21cfe6'

  # dl.devmate.com/com.setapp.DesktopClient was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.setapp.DesktopClient/Setapp.zip'
  appcast 'https://updates.devmate.com/com.setapp.DesktopClient.xml',
          checkpoint: '08c1f419440f53b04c0deb7e3dff983f7201b73f1fa2695bf714f32c04cfbb7c'
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
