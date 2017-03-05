cask 'deadbeef' do
  version '1.0'
  sha256 '7e21c47d545d549bec998a9098c81b5a1f132af7207687c9af39e63c9aa6041b'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: '3d74c7f0183363abd0275f7f70abf57ff2a28589bd6d84da5fb6a4ce13fd3e7c'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
