cask 'paragon-ntfs' do
  version '15.0.911_000'
  sha256 'dab9778908cbecc1b136e6e05fcf3ec350896c82b1d43c0a9bbaefdfde66df67'

  url "http://dl.paragon-software.com/esd/Paragon-1091-PEU_MacInstallUnlock_#{version}.dmg"
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
