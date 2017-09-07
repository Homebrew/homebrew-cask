cask 'fredm-fuse' do
  version '1.3.7'
  sha256 'c86c2820ca65af064bb9971cfb7cdff81f2f974c3492ea10d7cc7d0c82493a08'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '9b4362ea3a1b8e0eae268315258065061af8bd4f0a58f4e3cb7684e51c9de025'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
