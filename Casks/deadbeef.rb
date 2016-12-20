cask 'deadbeef' do
  version '0.7.2'
  sha256 '13efaf69691e579a95dc5394648766f533082cc8acd4fef094eb5d92f600e967'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'd9170ef09da3831c32f6cc4e2331cb67571738aa69c90dbf86d4554cc9bd3875'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
