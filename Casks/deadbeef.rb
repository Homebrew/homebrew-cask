cask 'deadbeef' do
  version :latest
  sha256 :no_check

  url 'https://downloads.sourceforge.net/deadbeef/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: '9a21bf0f8ea4dd2906546382547377ba1ec060ece905e66ea77b411ec21e81cb'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'
  license :gpl

  app 'deadbeef.app'
end
