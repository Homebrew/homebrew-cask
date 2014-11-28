cask :v1 => 'paragon-extfs' do
  version :latest
  sha256 :no_check

  url 'http://dl.paragon-software.com/demo/extmac_trial_u.dmg'
  homepage 'http://www.paragon-software.com/home/extfs-mac/'
  license :unknown

  pkg 'FSInstaller.app/Contents/Resources/Paragon ExtFS for Mac OS X.pkg'

  uninstall :pkgutil => 'com.paragon-software.filesystems.ExtFS.pkg',
            :script  => 'Uninstall.app/Contents/Resources/uninstall.sh',
            :launchctl => [
                           'com.paragon.extfs*',
                           'com.paragon.updater'
                          ]
end
