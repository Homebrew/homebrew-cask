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
    version :latest
    sha256 :no_check
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.12',
            checkpoint: 'b90dca0e12b64703be42b270af50fb5ea3dedd1673b270cdcee48f7f221f459b'
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
