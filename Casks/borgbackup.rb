cask 'borgbackup' do
  version '1.1.2'
  sha256 'ac858cb8819826bb428639359b20c7504924c26dbab760cd1c5bf54adf93ad6d'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '0591e2e2ef86207649efa5dbf5307eaf50a47c6c14273d80ab311f789da4a089'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
