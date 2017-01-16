cask 'folding-at-home' do
  version '7.4.4'
  sha256 'c0de525eef498c2c4befc0b719ffd50d8fe4494ced64ee3bc4d60e8b919306a0'

  url "https://fah.stanford.edu/file-releases/public/release/fah-installer/osx-10.6.4-64bit/v#{version.sub(%r{\.\d+$}, '')}/fah-installer_#{version}_x86_64.mpkg.zip"
  name 'Folding@home'
  homepage 'https://folding.stanford.edu/'

  pkg "fah-installer_#{version}_x86_64.pkg"

  uninstall pkgutil:   'edu.stanford.folding.*',
            launchctl: 'edu.stanford.folding.fahclient',
            quit:      %w[
                         edu.stanford.folding.fahviewer
                         edu.stanford.folding.fahcontrol
                       ]
end
