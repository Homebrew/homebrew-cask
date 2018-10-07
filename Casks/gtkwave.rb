cask 'gtkwave' do
  version '3.3.94'
  sha256 '8bbbde8d6cd98e1cc8e3adbc5d27fda111feb05ec08855ed25930cde928a161c'

  # downloads.sourceforge.net/gtkwave was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'https://gtkwave.sourceforge.io/'

  app 'gtkwave.app'
end
