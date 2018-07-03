cask 'fredm-fuse' do
  version '1.5.5'
  sha256 '31656a6e10eeb57e8db2a0eacbc3cabc8440a0c9b6faba7a0383dd1431a49095'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
