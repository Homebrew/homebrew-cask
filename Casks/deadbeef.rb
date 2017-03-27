cask 'deadbeef' do
  version '1.0'
  sha256 '57b1c473f4897e6ad2f20f81d53cf9441c1d50a23162d999d7eec7ee171141db'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'd5242a9bc079e0b285c8b12c69a5c2aab17c610f8683294554382f69a6ab5288'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
