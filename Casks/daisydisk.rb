cask 'daisydisk' do
  version '4.6.5.1'
  sha256 'c99e4a5eb7209770e4ffc21a43e6c8c047567f04af0841afe064002c8d04e770'

  url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  appcast 'https://daisydiskapp.com/downloads/appcastReleaseNotes.php?appEdition=Standard&osVersion=10.13'

  name 'DaisyDisk'
  homepage 'https://daisydiskapp.com/'

  auto_updates true

  app 'DaisyDisk.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.daisydiskapp.DaisyDiskAdminHelper',
            launchctl: 'com.daisydiskapp.DaisyDiskAdminHelper'

  zap trash: [
               '~/Library/Application Support/DaisyDisk',
               '~/Library/Caches/com.daisydiskapp.DaisyDiskStandAlone',
               '~/Library/Preferences/com.daisydiskapp.DaisyDiskStandAlone.plist',
             ]
end
