cask 'borgbackup' do
  version '0.30.0'
  sha256 'fe8dc32f89f56f96ee350a7989bc761520db911669e4b08cedcc8da60a4bd9dd'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '3a1f90365ac69b9ddfff6d162927b9a3ce9b42d176f5adf467e3b7378dd69909'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '243ACFA951F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
