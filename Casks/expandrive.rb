cask 'expandrive' do
  version '5.4.1'
  sha256 '22a71f16a7108e3090841d97023cfd5480d4e7a852ceda3d70d3566008df3cee'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'dda2d1d5d2533f15c9aa383e3995c94adce333061f6d06f76bba00800500b4c4'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/expandrive'

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
