cask 'gtkwave' do
  version '3.3.93'
  sha256 'd95957803ee64659755d87cb0d49b8e9887e799814575c6f2af8b7b86e17a649'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
