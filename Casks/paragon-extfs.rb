cask 'paragon-extfs' do
  version '11'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://dl.paragon-software.com/demo/trial_extfs#{version}.dmg"
  name 'Paragon ExtFS'
  homepage 'https://www.paragon-software.com/ufsdhome/extfs-mac/'

  installer manual: "Install Paragon ExtFS for Mac #{version}.app"

  uninstall kext:      'com.paragon-software.filesystems.extfs',
            launchctl: 'com.paragon-software.extfs*',
            pkgutil:   'com.paragon-software.pkg.extfs',
            quit:      'com.paragon-software.extfs*',
            signal:    [
                         ['KILL', 'com.paragon-software.extfs.FSMenuApp'],
                         ['KILL', 'com.paragon-software.extfs.notification-agent'],
                       ]

  zap trash: '~/Library/Preferences/com.paragon-software.extfs.fsapp.plist'
end
