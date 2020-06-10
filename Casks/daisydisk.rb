cask 'daisydisk' do
  version '4.10'
  sha256 'fdf7addeaf07c873337823c58a22b1d70e51f6ed3258b4e8013a05bb8d955a1c'

  url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  appcast 'https://daisydiskapp.com/downloads/appcastReleaseNotes.php?appEdition=Standard&osVersion=10.15'
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
