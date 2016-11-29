cask 'gpg-sync' do
  version '0.1.0'
  sha256 '815a136c36ebcad6b3c1905f40570582a0cae0c9d8784e3e8fe3d6ff8e1f2e0f'

  url "https://github.com/firstlookmedia/gpgsync/releases/download/v#{version}/GPGSync.pkg"
  appcast 'https://github.com/firstlookmedia/gpgsync/releases.atom',
          checkpoint: '7711036493f8e7b022efeb90c64ddfe261525b55daad0149eac7face93c658ae'
  name 'GPG Sync'
  homepage 'https://github.com/firstlookmedia/gpgsync/'

  pkg 'GPGSync.pkg'

  uninstall pkgutil:   'org.firstlook.gpgsync',
            launchctl: 'org.firstlook.gpgsync'
end
