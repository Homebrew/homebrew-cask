cask 'borgbackup' do
  version '1.1.5'
  sha256 'bf71ee7d5aa46a47b8fd5d2105d523da279e6c438198def3b9988d169c92351d'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: 'eb322dddad67aa477b0d7006707aaec4950d8c146a63292bdccecd3a43124bce'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
