cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.4.5'
  sha256 '8e3fcdcf1fda8219a16ffc91e015d4d8a8784558e81f9e4068650566cfc35e84'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '142c4420f784998ac5eac81b16b102f5112d0ee045b29991d361843cb33aca8a'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
