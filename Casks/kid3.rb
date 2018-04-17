cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.6.0'
  sha256 '64b0b6af0e146f1a80f6f56063410b7c43183747916bfc475758057aaf61032d'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: 'dbf9ad50da002d6bcdd029f014093f68d8a378e6ac62a25629e7b2505665f23a'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
