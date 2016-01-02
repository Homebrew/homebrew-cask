cask 'borgbackup' do
  version '0.29.0'
  sha256 'acdb2b3ee81a85f135baaed343ee9780bb2d55a42285ed3258ac12d3f0e05a51'

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  license :bsd
  gpg "#{url}.asc",
      :key_id => '243ACFA951F78E01'

  container :type => :naked

  binary 'borg-macosx64', :target => 'borg'
end
