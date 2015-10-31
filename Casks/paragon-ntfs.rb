cask :v1 => 'paragon-ntfs' do
  version '14'
  sha256 '0d9126d1ee8e8d70eeb5f43a8d782bd7e8ec1976fd816f5041fa66005723b311'

  url "http://dl.paragon-software.com/demo/ntfsmac#{version}_trial_e.dmg"
  name 'Paragon NTFS for Mac'
  homepage 'https://www.paragon-software.com/home/ntfs-mac/'
  license :commercial

  pkg 'FSInstaller.app/Contents/Resources/Paragon NTFS for Mac OS X.pkg'

  uninstall :pkgutil => 'com.paragon-software.filesystems.NTFS.pkg',
            :script => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :launchctl => [
                           'com.paragon.ntfs*',
                           'com.paragon.updater'
                          ]
end
