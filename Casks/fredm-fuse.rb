cask 'fredm-fuse' do
  version '1.1.1.1'
  sha256 '28533a6b1c31d1ca76b5509a408fb587f232b24392a0ffe1e45dac8e0a3e2880'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOSX-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '0f03028636031305e1d68311f0c6319adb8ff5516e413d116362344302fba22d'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for Mac OS X/Fuse.app'
end
