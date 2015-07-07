cask :v1 => 'expandrive' do
  version :latest
  sha256 :no_check

  url 'http://updates.expandrive.com/apps/expandrive/download_latest'
  name 'ExpanDrive'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3'
  homepage 'https://www.expandrive.com/expandrive'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ExpanDrive.app'

  zap :delete => [
                  '~/Library/Application Support/ExpanDrive',
                  '~/Preferences/com.expandrive.ExpanDrive2.plist',
                  '~/Preferences/com.expandrive.ExpanDrive3.plist',
                 ]
end
