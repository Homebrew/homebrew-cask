cask :v1 => 'expandrive' do
  version '5.0.11'
  sha256 '39cbdf4a8a5f6f9280779a0181870f1b459be4ce6cac450d2707cb978dc0019e'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.','-')}/download.dmg"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => 'bb97d4e362c75588d0c2e67d3cfdbd8e3c6200ebd524325b5f8c81560240ca5c'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
