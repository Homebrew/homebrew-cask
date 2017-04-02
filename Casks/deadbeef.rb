cask 'deadbeef' do
  version :latest
  sha256 :no_check

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'd5242a9bc079e0b285c8b12c69a5c2aab17c610f8683294554382f69a6ab5288'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
