cask 'deadbeef' do
  version '0.7.2'
  sha256 'd13074c7da8c2f0b4dbf346aa6e75a3037db7363f6560f83d0abe6d1a1bcf8e0'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'a7a2c363aacf2216b24b4a3fa37c818dfe20ac67577b8182df18323239aae86d'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
