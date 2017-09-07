cask 'borgbackup' do
  version '1.0.11'
  sha256 'e197a7b830760ddec8b33bdc241312b50e6c27701384e2aafed01c22805395e3'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '79f4f919971110b412e3008d8f51645b6ca068d7bcbc0ea0ae99e84220b36038'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
