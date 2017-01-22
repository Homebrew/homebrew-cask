cask 'deadbeef' do
  version '0.7.2'
  sha256 '09f588fc548f5faf1b58f07aafd0d65f5df1f8e00c143e80ddd879f02a7d33c0'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'df2ceb0eb07b78a7b1a4c1ebdc388ce157ac9eb1ca97792e66bf395bf4922844'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
