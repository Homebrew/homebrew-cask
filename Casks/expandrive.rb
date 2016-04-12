cask 'expandrive' do
  version '5.1.9'
  sha256 '424d8ebceeddf54ede46c39310723cfba6335e553daa2a148fae1de1e9a301aa'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'ff6d5e798375459a2ffc3a7996108c6f78b6ce05637728213854b705be4dc70a'
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
