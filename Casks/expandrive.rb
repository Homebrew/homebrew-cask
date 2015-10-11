cask :v1 => 'expandrive' do
  version '5.1.0'
  sha256 'c6cb84ba29868f22ae5969e7b705c57b77da7265fb707374a2aa1e4207dd45d2'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.gsub('.','-')}/download.dmg"
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          :sha256 => '45a743c5b02272a780c4d4f48f9f1a4078b837e0c49783116b474a46711871a9'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
