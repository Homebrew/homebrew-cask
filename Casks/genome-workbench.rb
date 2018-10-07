cask 'genome-workbench' do
  version '2.12.10'
  sha256 '77ff3fb398c41c08141dcc46894ca64bef89fffe53ab1539d77803b94700aadf'

  url "https://ftp.ncbi.nlm.nih.gov/toolbox/gbench/ver-#{version}/gbench-macos64-10.10-#{version}.dmg"
  name 'Genome Workbench'
  homepage 'https://www.ncbi.nlm.nih.gov/tools/gbench/'

  depends_on macos: '>= :yosemite'

  app 'Genome Workbench.app'
end
