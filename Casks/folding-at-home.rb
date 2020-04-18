cask 'folding-at-home' do
  version '7.6.9'
  sha256 '9475e8aef3614daf92e3cfc8748be5e10e1c5b38a5c5da30ce3fe60f754de16b'

  url "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/fah-installer_#{version}_x86_64.mpkg.zip"
  appcast 'https://download.foldingathome.org/js/fah-downloads.js'
  name 'Folding@home'
  homepage 'https://foldingathome.org/'

  pkg "fah-installer_#{version}_x86_64.pkg"

  uninstall pkgutil:   'org.foldingathome.*',
            launchctl: 'org.foldingathome.fahclient',
            quit:      [
                         'org.foldingathome.fahviewer',
                         'org.foldingathome.fahcontrol',
                       ]
end
