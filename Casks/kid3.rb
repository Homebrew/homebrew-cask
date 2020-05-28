cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.8.3'
  sha256 'ef4adf153bd7e52088021eae4f51d92c6de14b4953bcd6352b75b9482d486894'

  # downloads.sourceforge.net/kid3/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/p/kid3/news/feed.rss'
  name 'Kid3'
  homepage 'https://kid3.sourceforge.io/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
