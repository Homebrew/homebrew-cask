cask 'fredm-fuse' do
  version '1.5.2'
  sha256 '0dbaa072cdf12000a664d74bec332a041185a5800c84f9dbb2a3fd3f7de933c6'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: 'f5a5ddd256fea03e4e90953343995c328a42c9b3abe91cacf3a1e7bdd70490c7'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
