cask 'parallels-access' do
  version '3.2.0-31423'
  sha256 'e5fd360aa76f3ba5a681b065fbdeaa5b43a4fc8a6bae0b182a27bcdde55d183a'

  url "https://download.parallels.com/pmobile/v#{version.major}/#{version}/ParallelsAccess-#{version}-mac.dmg"
  name 'Parallels Access'
  homepage 'https://www.parallels.com/products/access/'

  # This .dmg cannot be extracted normally
  # Original discussion: https://github.com/Homebrew/homebrew-cask/issues/26872
  container type: :naked

  preflight do
    system_command '/usr/bin/hdiutil',
                   args: ['attach', '-nobrowse', "#{staged_path}/ParallelsAccess-#{version}-mac.dmg"]
    system_command '/Volumes/Parallels Access/Parallels Access.app/Contents/MacOS/pm_ctl',
                   args: ['instance_install'],
                   sudo: true
    system_command '/usr/bin/hdiutil',
                   args: ['detach', '/Volumes/Parallels Access']
  end

  uninstall launchctl: [
                         'com.parallels.mobile.startgui.launchagent',
                         'com.parallels.mobile.dispatcher.launchdaemon',
                         'com.parallels.mobile.kextloader.launchdaemon',
                         'com.parallels.mobile.prl_deskctl_agent.launchagent',
                       ],
            quit:      [
                         'com.parallels.inputmethod.ParallelsIM',
                       ],
            signal:    [
                         ['TERM', 'com.parallels.mobile'],
                         ['TERM', 'com.parallels.mobile.prl_deskctl_agent'],
                       ],
            kext:      [
                         'com.parallels.virtualhid',
                         'com.parallels.virtualsound',
                       ],
            delete:    '/Applications/Parallels Access.app'

  zap trash: [
               '~/Library/Cookies/com.parallels.mobile.prl_deskctl_agent.binarycookies',
               '~/Library/Group Containers/4C6364ACXT.com.parallels.Access',
               '~/Library/Preferences/com.parallels.Parallels Access.plist',
               '~/Library/Preferences/com.parallels.Parallels Access.plist.sdb',
               '~/Library/Preferences/com.parallels.mobile.plist',
             ]
end
