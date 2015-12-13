cask :v1 => 'borgbackup' do
  version '0.28.2'
  sha256 'b4dcc75cf0a224abaa26c5cad565b6670050ca43e89ca144683a74fe6fff58fa'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  name 'BorgBackup'
  homepage 'http://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      :key_id => '243ACFA951F78E01'

  container :type => :naked

  binary 'borg-macosx64', :target => 'borg'
end
