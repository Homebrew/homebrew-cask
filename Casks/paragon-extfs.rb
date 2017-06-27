cask 'paragon-extfs' do
  version '11'
  sha256 '3e000e689433e95087b054e1d3ad8ddb79171c2db2d4e000ac3b05b6b056d9f5'

  url "http://dl.paragon-software.com/demo/trial_extfs#{version}.dmg"
  name 'Paragon ExtFS'
  homepage 'https://www.paragon-software.com/ufsdhome/extfs-mac/'

  container nested: 'FSInstaller.app/Contents/Resources/product.zip'

  pkg 'product.pkg'

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
