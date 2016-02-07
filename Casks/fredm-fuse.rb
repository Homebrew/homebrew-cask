cask 'fredm-fuse' do
  version '1.1.1.1'
  sha256 '28533a6b1c31d1ca76b5509a408fb587f232b24392a0ffe1e45dac8e0a3e2880'

  url "http://downloads.sourceforge.net/sourceforge/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOSX-#{version}.zip"
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'
  license :gpl

  app 'Fuse for Mac OS X/Fuse.app'
end
