cask :v1 => 'paragon-ntfs' do
  version '14'
  sha256 'eb25919b05d37dbde9da3555db3f2fb97d54038e8e8c98394e33116e2c40861a'

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
