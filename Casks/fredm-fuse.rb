cask 'fredm-fuse' do
  version '1.5.3'
  sha256 '4f06f5856971530c43e484d57bd8342e6e6a3dfbf6366d6af13ffc5fd5299e2d'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
