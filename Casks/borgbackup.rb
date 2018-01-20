cask 'borgbackup' do
  version '1.1.4'
  sha256 'ed205a17eb2c881b421317f76b35f2800a743455ee1b81d4f47451e42f690826'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '5a573388701b1016807563c5f925ecebb0db52235803ed91a2b89d6556b1ec92'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
