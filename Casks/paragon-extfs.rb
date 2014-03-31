class ParagonExtfs < Cask
  url 'http://dl.paragon-software.com/demo/extmac_trial_u.dmg'
  homepage 'http://www.paragon-software.com/home/extfs-mac/'
  version 'latest'
  no_checksum
  install 'FSInstaller.app/Contents/Resources/Paragon ExtFS for Mac OS X.pkg'
end
