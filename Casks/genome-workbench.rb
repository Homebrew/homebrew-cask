cask 'genome-workbench' do
  version '2.12.5'
  sha256 'd6ef76f4133b9157c4c3d90f823d0a0d306b9ebc76dcc3fe21bbb46c7540dbae'

  url "ftp://ftp.ncbi.nlm.nih.gov/toolbox/gbench/ver-#{version}/gbench-macos64-10.10-#{version}.dmg"
  name 'Genome Workbench'
  homepage 'https://www.ncbi.nlm.nih.gov/tools/gbench/'

  depends_on macos: '>= :yosemite'

  app 'Genome Workbench.app'
end
