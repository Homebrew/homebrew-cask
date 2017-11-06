cask 'borgbackup' do
  version '1.1.2'
  sha256 'ac858cb8819826bb428639359b20c7504924c26dbab760cd1c5bf54adf93ad6d'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
