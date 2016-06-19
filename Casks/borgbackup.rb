cask 'borgbackup' do
  version '1.0.3'
  sha256 '72c13b51be987560159cb8801e1a7bdfa31d50225c2691a6f129859dc103f04e'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-darwin64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: 'bc816a4618996630e59876dc6590959a5c0275e42b1c652930348d24be4ff6be'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '51F78E01'

  container type: :naked

  binary 'borg-darwin64', target: 'borg'
end
