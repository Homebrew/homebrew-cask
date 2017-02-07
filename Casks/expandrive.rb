cask 'expandrive' do
  version '5.4.5'
  sha256 '8f5110a31434f62423817f968d6816d0d48d2b81114a6079d1a3ff481046b5b7'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'bc2c87a507e09ac69d0c761327e8db7d75835dcb323603290f1564ca5e5e72bb'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/apps/expandrive/'

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
