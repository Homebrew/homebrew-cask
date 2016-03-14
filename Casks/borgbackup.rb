cask 'borgbackup' do
  version '1.0.0'
  sha256 'db6598d7a1297440e1160648551a1c09ad80c18fc79acd27bb31cfb85c97fc8d'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '0007c9144231742522b03a591148605cf9fcdbfaddb5ac57095824b3e527b751'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '243ACFA951F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
