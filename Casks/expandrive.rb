cask :v1 => 'expandrive' do
  version :latest
  sha256 :no_check

  url 'http://updates.expandrive.com/apps/expandrive/download_latest'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3'
  homepage 'http://www.expandrive.com/expandrive'
  license :unknown

  app 'ExpanDrive.app'
  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
