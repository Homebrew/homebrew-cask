cask 'fredm-fuse' do
  version '1.3.4'
  sha256 'ed2cd936a220091c55285b2543ce7ec19603018dafdf12f1cc5bff758315a999'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '879ca9987e1fae8ec6ce39f04a90d8e489afdb97c990e7c44ad1a869befc4e25'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
