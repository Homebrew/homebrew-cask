cask :v1 => 'paragon-ntfs' do
  version :latest
  sha256 :no_check

  url 'http://dl.paragon-software.com/demo/ntfsmac_trial_u.dmg'
  homepage 'http://www.paragon-software.com/home/ntfs-mac/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'FSInstaller.app/Contents/Resources/Paragon NTFS for Mac OS X.pkg'

  uninstall :pkgutil => 'com.paragon-software.filesystems.NTFS.pkg',
            :script => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :launchctl => [
                           'com.paragon.ntfs*',
                           'com.paragon.updater'
                          ]
end
