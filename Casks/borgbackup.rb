cask 'borgbackup' do
  version '1.0.10'
  sha256 '6c441f77e43909248b7494d768e34e442984ac8aaaa32405aa53fc750d9e1245'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '44e5d9858488ccdcd055eddeb61caf204ca15a22e2e5d8808dc636216d573e10'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
