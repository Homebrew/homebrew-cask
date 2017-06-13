cask 'expandrive' do
  version '5.4.6'
  sha256 'b2335cf10b9b3d8fa578ab6a90bd03d1f8aaf0149d83d1ce6092b73e9b199275'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'a825a9dfa334b3065953739b8ecb4faf648e733950eed3af7360b2196bd2705a'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/apps/expandrive/'

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
