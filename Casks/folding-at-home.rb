cask 'folding-at-home' do
  version '7.5.1'
  sha256 '94fd47ff55120c1c869d0dfbf366ae418406a3b47b0fa1bcf94014777abb72a6'

  # download.foldingathome.org/releases/public/release/fah-installer was verified as official when first introduced to the cask
  url "https://download.foldingathome.org/releases/public/release/fah-installer/osx-10.11-64bit/v#{version.major_minor}/fah-installer_#{version}_x86_64.mpkg.zip"
  appcast 'https://download.foldingathome.org/releases/public/release/fah-installer/',
          checkpoint: '73daf3b43a88d26ecd67c674ed336d62300d850c886b1435b09b481fdaf430c7'
  name 'Folding@home'
  homepage 'https://folding.stanford.edu/'

  pkg "fah-installer_#{version}_x86_64.pkg"

  uninstall pkgutil:   'org.foldingathome.*',
            launchctl: 'org.foldingathome.fahclient',
            quit:      [
                         'org.foldingathome.fahviewer',
                         'org.foldingathome.fahcontrol',
                       ]
end
