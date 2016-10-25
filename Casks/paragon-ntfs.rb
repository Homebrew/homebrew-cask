cask 'paragon-ntfs' do
  version '14'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://dl.paragon-software.com/demo/ntfsmac#{version}_trial_e.dmg"
  name 'Paragon NTFS for Mac'
  homepage 'https://www.paragon-software.com/home/ntfs-mac/'

  pkg 'FSInstaller.app/Contents/Resources/Paragon NTFS for Mac OS X.pkg'

  uninstall pkgutil:   'com.paragon-software.filesystems.NTFS.pkg',
            script:    'Uninstall.app/Contents/Resources/uninstallNTFS.sh',
            launchctl: [
                         'com.paragon.ntfs*',
                         'com.paragon.updater',
                       ]
end
