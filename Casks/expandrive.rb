class Expandrive < Cask
  version 'latest'
  sha256 :no_check

  url 'http://updates.expandrive.com/apps/expandrive/download_latest'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3'
  homepage 'http://www.expandrive.com/expandrive'

  app 'ExpanDrive.app'
  zap :files => [
                 '~/Library/Application Support/ExpanDrive',
                 '~/Preferences/com.expandrive.ExpanDrive2.plist',
                 '~/Preferences/com.expandrive.ExpanDrive3.plist',
                ]
end
