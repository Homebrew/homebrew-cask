cask 'fredm-fuse' do
  version '1.4.1'
  sha256 '3c638d34fa8f015332bf71e4ed4d67aa29e4bdf3191556aaf2df8de05cbfd3bd'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '9cbe56c59a4765930fba325d9d7c11399171a4dcc3ee684fe33dbc25421c45d0'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
