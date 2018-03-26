cask 'daisydisk' do
  if MacOS.version <= :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version.dots_to_underscores}.dmg"
  elsif MacOS.version <= :mavericks
    version '3.0.3.1'
    sha256 'fe2aa86f2ea8a1f0c4791857a5b7991ecad295b5b969849bb7b15a890ab54b86'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version.dots_to_underscores}.zip"
  else
    version '4.5'
    sha256 '680bbd192deade466a98cd1e2e4adec7aac4145dcf0c044a37a9d44f4a2e0c00'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastReleaseNotes.php?appEdition=Standard&osVersion=10.13',
            checkpoint: 'ff9fe30f87ec4ad4f525145c590c8cda25159b5ecee0d8ae96150f3f5dbd3dbd'
  end

  name 'DaisyDisk'
  homepage 'https://daisydiskapp.com/'

  app 'DaisyDisk.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.daisydiskapp.DaisyDiskAdminHelper',
            launchctl: 'com.daisydiskapp.DaisyDiskAdminHelper'

  zap trash: [
               '~/Library/Application Support/DaisyDisk',
               '~/Library/Caches/com.daisydiskapp.DaisyDiskStandAlone',
               '~/Library/Preferences/com.daisydiskapp.DaisyDiskStandAlone.plist',
             ]
end
