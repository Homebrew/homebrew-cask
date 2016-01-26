cask 'expandrive' do
  version '5.1.6'
  sha256 '62513b022d8c7b0201ad5332729e3fa3dd09087dabaddb8fda32d60371e49a71'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'd15a5204fac3d80d0f2a6386b07391d3c3f65791455af300600ca0ff1331fcad'
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
