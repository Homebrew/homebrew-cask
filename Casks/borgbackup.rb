cask 'borgbackup' do
  version '0.30.0'
  sha256 'fe8dc32f89f56f96ee350a7989bc761520db911669e4b08cedcc8da60a4bd9dd'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: 'aa2777f9a7969845e2719c9b8d50ca70819486c59701b9c23035dfabddc62832'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '243ACFA951F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
