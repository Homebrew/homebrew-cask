class ParagonNtfs < Cask
  url 'http://dl.paragon-software.com/demo/ntfsmac_trial_u.dmg'
  homepage 'http://www.paragon-software.com/home/ntfs-mac/'
  version 'latest'
  sha256 :no_check
  install 'FSInstaller.app/Contents/Resources/Paragon NTFS for Mac OS X.pkg'
  uninstall :pkgutil => 'com.paragon-software.filesystems.NTFS.pkg'
  uninstall :files  => [
                        '/System/Library/Extensions/ntfs.kext',
                        '/System/Library/Filesystems/ntfs.fs',
                        '/System/Library/Filesystems/ufsd.fs',
                        '/System/Library/Filesystems/ufsd_NTFS.fs',
                       ]	
end
