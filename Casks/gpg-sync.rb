cask 'gpg-sync' do
  version '0.1.1'
  sha256 '56b3d0073baf521fd6dc8f2fc09d63edf75d16b37a46b4437275dc3865484be3'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom',
          checkpoint: '3ab44b4f16899187408c2c5cedab0d19dcb9960fcc3f9a2758800b876e3f487a'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg 'GPGSync.pkg'

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
