cask 'borgbackup' do
  version '1.0.2'
  sha256 '2880f17df99dfdf6a16c206c78cd6d853a8c140c4d09f9b6c83a43094b4d34c7'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '92766ba1c792610c63086621a1a149f39d52e338e7993b44812bfa63fcdc93f8'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '243ACFA951F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
