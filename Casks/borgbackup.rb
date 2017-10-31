cask 'borgbackup' do
  version '1.1.1'
  sha256 'cc0d092690ea4c86bf0d4e7ab7c8cad487e5df287559b2347531e1a62e9c8fb6'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: 'd22128da1dc5618f4a497403238d1930c39555764fa0b02926a1c23195b351b7'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'
  gpg "#{url}.asc", key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
