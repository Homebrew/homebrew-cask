cask :v1 => 'expandrive' do
  version '5.1.2'
  sha256 'e0bda4b5ebd5b41a656ab69e88badd53571ee7f66d12d8ad8cc6f5b953daf8e0'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.','-')}/download.dmg"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '5160eb9817c6059ca36f31747a2e7acc08b8f6600237dd0b1d1c598661afe8e7'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
