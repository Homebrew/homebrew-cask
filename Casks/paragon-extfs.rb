cask 'paragon-extfs' do
  version :latest
  sha256 :no_check

  url 'http://dl.paragon-software.com/demo/extmac10_trial.dmg'
  name 'Paragon ExtFS'
  homepage 'https://www.paragon-software.com/home/extfs-mac/'

  pkg 'FSInstaller.app/Contents/Resources/Paragon ExtFS for Mac.pkg'

  uninstall pkgutil:   'com.paragon-software.filesystems.ExtFS.pkg',
            script:    'Uninstall.app/Contents/Resources/uninstall.sh',
            launchctl: [
                         'com.paragon.extfs*',
                         'com.paragon.updater',
                       ]
end
