cask 'deadbeef' do
  version '0.7.2'
  sha256 'b1fd4988374bb4e8869b555ed43d1ac89f47ecc592cf2f2ca631dd5ac1f9f8a7'

  url 'https://downloads.sourceforge.net/deadbeef/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'bf624c56cc602d671f2dae89571bf78a7cf14d81e8ba32f23e2f28c5bda2ac26'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
