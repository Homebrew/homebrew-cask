cask 'fredm-fuse' do
  version '1.5.3'
  sha256 '4f06f5856971530c43e484d57bd8342e6e6a3dfbf6366d6af13ffc5fd5299e2d'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: 'a442e3efd5091f6632bcd1b4865fa143f360f792fd96a91a13f03ab12f85fc21'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
