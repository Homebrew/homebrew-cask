cask 'antconc' do
  version '3.5.6'
  sha256 '7cf816ea30257c3663cbb0932bd598dc0378c42c1dd370cee59cfda0489a18e7'

  url "http://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antconc/releases/',
          checkpoint: '35a1e7bf4acabbec68ceb0e0d2170fe79aa9032c3313dbc9fa8f384a88887301'
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc/'

  app 'AntConc.app'
end
