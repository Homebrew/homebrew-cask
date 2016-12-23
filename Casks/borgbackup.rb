cask 'borgbackup' do
  version '1.0.9'
  sha256 'f2928c03c6003617559dc0cd4f41780ba55a925b0e35c384dd0e3312c5896ab8'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '5c2d7ce18dfa6002c26fa82b714793a35f9e64f9d8586db020766e920ae59ab2'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
