cask 'parallels-access' do
  version '3.1.6-31326'
  sha256 '1713e25c009785bb53f8eb1d193155a4c401ebba4361ce577e3e5c16f3ce787e'

  url "https://download.parallels.com/pmobile/v#{version.major}/#{version}/ParallelsAccess-#{version}-mac.dmg"
  name 'Parallels Access'
  homepage 'https://www.parallels.com/products/access/'

  installer script: {
                      executable: 'Parallels Access.app/Contents/MacOS/pm_ctl',
                      args:       %w[instance_install],
                      sudo:       true,
                    }

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
