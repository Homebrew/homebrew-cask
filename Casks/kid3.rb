cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.8.0'
  sha256 '51639f5d869740f723b680fa8f070da0e73709183612c0dfe3afee497068f486'

  # downloads.sourceforge.net/kid3 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/p/kid3/news/feed.rss'
  name 'Kid3'
  homepage 'https://kid3.sourceforge.io/'

  app 'kid3.app'
  binary 'kid3.app/Contents/MacOS/kid3-cli'
end
