cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.8.2'
  sha256 '0265456af936c96f36c3fb29d60077d5123d670a6bb2cb26e40251daf7e8964d'

  # downloads.sourceforge.net/kid3 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/p/kid3/news/feed.rss'
  name 'Kid3'
  homepage 'https://kid3.sourceforge.io/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
