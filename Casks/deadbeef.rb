cask 'deadbeef' do
  version '0.7.2'
  sha256 '6628982e204ada72dbc7fe8c0f29ab3d7a25eb9890b2b01128b198469948ad6b'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: '324bd66ffc88c8106c529d625763f192175f6da2c928b146acdcf885b323b089'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
