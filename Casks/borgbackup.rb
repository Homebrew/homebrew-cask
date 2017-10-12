cask 'borgbackup' do
  version '1.1.0'
  sha256 'e87a8e597d3d87dc4df79befbfd6a5c68576e99d66cb209a7ae34018b6daacd0'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '99df3e9400b721345bd8c21e6e94b9957ce8d38fbff0b88d1be8d984b0d40147'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
