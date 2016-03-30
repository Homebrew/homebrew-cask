cask 'expandrive' do
  version '5.1.7'
  sha256 'f6f3364459aa59b699448fdc5dbd8b00852bd7a57ea902ab25d247c7ff96a5ae'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: '239d21a48a7681a605aae9ae08e0bb3261755d774598b2242dcdbd8666c04c06'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
