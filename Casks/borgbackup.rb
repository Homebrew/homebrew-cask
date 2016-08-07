cask 'borgbackup' do
  version '1.0.6'
  sha256 '17eb30d172b96ffc8a87e16c189a8249ad544d2d5d12da93f1aff9d71ef13aca'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: 'e53b173e9e9aa7c40f08a5b398cac3bd4158491656181d4fa636b454b47f37f0'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
