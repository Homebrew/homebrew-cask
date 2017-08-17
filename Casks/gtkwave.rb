cask 'gtkwave' do
  version '3.3.83'
  sha256 'e69abb812f5533c12cd8f3499ba14d7b825c1d7ec4ced270f45faeca438abcba'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '272dbc66b1cd6541141748429764cad8cd0df9fba8125ff66efd4fe51d76c23a'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
