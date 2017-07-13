cask 'carbon-copy-cloner' do
  version '4.1.16.4569'
  sha256 'c7d309ef9372546106443baf9de5e08dc4c9aaac90a1e61cd54a43ace39939ac'

  url "https://bombich.com/software/download_ccc.php?v=#{version}"
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'
end
