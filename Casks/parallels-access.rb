cask 'parallels-access' do
  version '3.0.2-30719'
  sha256 'afafadd6f3e384c0e421b10eb827f83fa65b60206c938431c9c20083d6a0f252'

  url "https://download.parallels.com/pmobile/v#{version.major}/#{version.major_minor_patch}/ParallelsAccess-#{version}-mac.dmg"
  name 'Parallels Access'
  homepage 'https://www.parallels.com/products/access/'

  installer script: 'Parallels Access.app/Contents/MacOS/pm_ctl',
            args:   %w[instance_install],
            sudo:   true

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

  zap delete: [
                '~/Library/Cookies/com.parallels.mobile.prl_deskctl_agent.binarycookies',
                '~/Library/Group Containers/4C6364ACXT.com.parallels.Access',
                '~/Library/Preferences/com.parallels.Parallels Access.plist',
                '~/Library/Preferences/com.parallels.Parallels Access.plist.sdb',
                '~/Library/Preferences/com.parallels.mobile.plist',
              ]
end
