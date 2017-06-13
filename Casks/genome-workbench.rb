cask 'genome-workbench' do
  version '2.11.10'
  sha256 '52b2f90d2feff1d048b21a359ad54a9e8bd0b545b97927285e4feaf1e0929516'

  url "ftp://ftp.ncbi.nlm.nih.gov/toolbox/gbench/ver-#{version}/gbench-macos64-10.9-#{version}.dmg"
  name 'Genome Workbench'
  homepage 'https://www.ncbi.nlm.nih.gov/tools/gbench/'

  depends_on macos: '>= :mavericks'

  app 'Genome Workbench.app'
end
