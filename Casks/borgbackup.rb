cask :v1 => 'borgbackup' do
  version '0.26.1'
  sha256 'f02231cadada5065e0cfae0ec989da8f26ba645ddf483d7ab903ddae36340432'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  gpg "#{url}.asc", :key_id => '243ACFA951F78E01'

  name 'BorgBackup'
  homepage 'http://borgbackup.readthedocs.org/en/stable/'
  license :bsd

  container :type => :naked

  binary 'borg-macosx64', :target => 'borg'
end
