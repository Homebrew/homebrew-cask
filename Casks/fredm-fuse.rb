cask 'fredm-fuse' do
  version '1.4.1'
  sha256 '3c638d34fa8f015332bf71e4ed4d67aa29e4bdf3191556aaf2df8de05cbfd3bd'

  url "https://downloads.sourceforge.net/fuse-for-macosx/fuse-for-macosx/#{version}/FuseForMacOS-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fuse-for-macosx/rss?path=/fuse-for-macosx',
          checkpoint: '7316e29750413452be8e76ec1f35f7a3fbaa4e720fb5de6070e9c90933ba38ff'
  name 'Fuse for Mac OS X'
  homepage 'http://fuse-for-macosx.sourceforge.net/'

  app 'Fuse for MacOS/Fuse.app'
end
