cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.8.1'
  sha256 '1a47c1ae065ee73f6d3e53b6e58dadf88e4a2d3bc9257cbad9c4a5b7d731074b'

  # downloads.sourceforge.net/kid3 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/p/kid3/news/feed.rss'
  name 'Kid3'
  homepage 'https://kid3.sourceforge.io/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
