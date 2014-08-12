class ParagonExtfs < Cask
  version 'latest'
  sha256 :no_check

  url 'http://dl.paragon-software.com/demo/extmac_trial_u.dmg'
  homepage 'http://www.paragon-software.com/home/extfs-mac/'

  install 'FSInstaller.app/Contents/Resources/Paragon ExtFS for Mac OS X.pkg'
end
