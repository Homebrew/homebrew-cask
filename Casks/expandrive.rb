cask 'expandrive' do
  version '5.1.4'
  sha256 '65d7088553533a96f258c7355e5e211219b9c49c5eed2948c543ac1a5010b43e'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.', '-')}/download.dmg"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '5160eb9817c6059ca36f31747a2e7acc08b8f6600237dd0b1d1c598661afe8e7'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                   '~/Library/Application Support/ExpanDrive',
                   '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                   '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
