cask 'borgbackup' do
  version '1.0.0rc2'
  sha256 'cb8659f2264903431eab9d4d4e80b989dd0a77fa222d5d5c3e62729091d87b5a'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: 'da8ffee5662c227726da623e83527719b01a97ed3e0b7c2344c7b1c4baaa9dfa'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '243ACFA951F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
