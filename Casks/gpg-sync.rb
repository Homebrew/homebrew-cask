cask 'gpg-sync' do
  version '0.1.2'
  sha256 '4a8808551aa712114e644750a7cac74093345ccfe1b72e96ab342bec0cc8d51c'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom',
          checkpoint: 'a18884dd3f0c074b4d107b90a891da00c48e3d6a76228f205f0bf0e47da13710'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg 'GPGSync.pkg'

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
