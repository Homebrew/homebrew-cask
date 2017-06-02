cask 'fredm-fuse' do
  version '1.3.5'
  sha256 'c8ceb38cd4439151ef45e49ec82e0ad90a9553ba1422d11b7964d1bf0cb62e09'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '5c6518610d364eeef84beb2fea002d073abc80556581a1c85a0642bc08f79e83'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
