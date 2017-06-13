cask 'fredm-fuse' do
  version '1.3.6'
  sha256 'd4cb5ef2446e67d075f53426c33ec3b674f91f2a2a25cf9b312675a85314feb9'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '2c76f89cc4facdf0d95628b02804a78e0e7d6c2f048a7ce562fc6ca94fb47159'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
