cask 'deadbeef' do
  version '0.7.2'
  sha256 '1ff1ea0ee014c1e192b03f3595a0a5e1acbb438cb02c454a30c6ff5dc5d88b22'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: '7128c57b577f5a38cd6dded52b1bedcbaf94a916eb0884e6d358e2e2e15d03b1'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
