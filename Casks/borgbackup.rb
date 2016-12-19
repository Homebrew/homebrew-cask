cask 'borgbackup' do
  version '1.0.9rc1'
  sha256 '926af3037808a017bd54c43d8d83e91ba2da68631b4321f253acedd704f200af'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '18c47b4b9dec2deff4da88dfdbe1f833ae680143d5291305d034fe68083c86d7'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
