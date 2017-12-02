cask 'borgbackup' do
  version '1.1.3'
  sha256 '59e0886799d6551a61cbc994e120337ff4af522c5a977a1b5ee6e365d7404682'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '4d46d5e6feabbc7ae94e76fdb557d1873ae6a804dff544e99baa853ffe5e582f'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
