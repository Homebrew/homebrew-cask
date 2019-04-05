cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.7.1'
  sha256 'b169a044d7cf5e8aa2fd8303ccb94e4d5e525835fc29f60dc2445f1499facd44'

  # downloads.sourceforge.net/kid3 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss'
  name 'Kid3'
  homepage 'https://kid3.sourceforge.io/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
