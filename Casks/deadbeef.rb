cask 'deadbeef' do
  version '1.0'
  sha256 'e3e3dbf0fd7b25473d61106a88049f98698b23496ec7ef538c0dcaaf38d968c8'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: '7220b7fd3e9e4a1658f332bee54f881529f3632947d7b8b7198f83da0b4687c3'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
