cask 'gtkwave' do
  version '3.3.82'
  sha256 'c656e5eb6348302a439c148a16888f7dfea97a38145f9f09fbaf859f09676515'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '2c63fa8ff01133af5132f9b07d7bde65a7a5265e32491794ea437f3e882e6786'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
