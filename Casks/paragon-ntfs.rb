cask 'paragon-ntfs' do
  version '15'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://dl.paragon-software.com/demo/ntfsmac#{version}_trial.dmg"
  name 'Paragon NTFS for Mac'
  homepage 'https://www.paragon-software.com/ufsdhome/ntfs-mac/'

  container nested: 'FSInstaller.app/Contents/Resources/product.zip'

  pkg 'product.pkg'

  uninstall kext:      'com.paragon-software.filesystems.ntfs',
            launchctl: 'com.paragon-software.ntfs*',
            pkgutil:   'com.paragon-software.pkg.ntfs',
            quit:      'com.paragon-software.ntfs*',
            signal:    [
                         ['KILL', 'com.paragon-software.ntfs.FSMenuApp'],
                         ['KILL', 'com.paragon-software.ntfs.notification-agent'],
                       ]

  zap trash: '~/Library/Preferences/com.paragon-software.ntfs.fsapp.plist'
end
