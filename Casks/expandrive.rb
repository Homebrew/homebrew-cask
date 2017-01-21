cask 'expandrive' do
  version '5.4.4'
  sha256 'efc1d7f1b1176b8aaacf3cdf1dcac2dc076fb3bdcf36d1ee677f098d99fdbf9e'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'a31489dfacd22f7f5b54fc449e6cce23b79b10cf487a7de455a772ba9b3e0fff'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/apps/expandrive/'

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
