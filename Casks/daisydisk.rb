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
    version '4.4'
    sha256 'c989793897d294c8732cb826c2e22cc478a2e7e3f445ca144ed20a7e1e281166'
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    appcast 'https://daisydiskapp.com/downloads/appcastFeed.php?osVersion=10.12',
            checkpoint: 'bac4b07cea1e62cdd84026d2259d52117f00b0984c58bc9a79d143e354ab57f4'
  end

  name 'DaisyDisk'
  homepage 'https://daisydiskapp.com/'

  app 'DaisyDisk.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '/Library/LaunchDaemons/com.daisydiskapp.DaisyDiskAdminHelper.plist',
                '/Library/PrivilegedHelperTools/com.daisydiskapp.DaisyDiskAdminHelper',
                '~/Library/Application Support/DaisyDisk',
                '~/Library/Preferences/com.daisydiskapp.DaisyDiskStandAlone.plist',
              ]
end
