cask 'deadbeef' do
  version '0.7.2'
  sha256 '8da871c4f8ab19515bb85119a85b32ed3917a8c01074afb8861a00debd3bb38e'

  url 'https://downloads.sourceforge.net/deadbeef/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: '34fb1506fb9797148a3191583ddd33c7279336876c6823a4c23e40431811e190'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
