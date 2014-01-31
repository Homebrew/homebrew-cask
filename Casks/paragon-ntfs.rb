class ParagonNtfs < Cask
  url 'http://dl.paragon-software.com/demo/ntfsmac_trial_u.dmg'
  homepage 'http://www.paragon-software.com/home/ntfs-mac/'
  version 'latest'
  no_checksum
  install 'FSInstaller.app/Contents/Resources/Paragon NTFS for Mac OS X.pkg'
end
