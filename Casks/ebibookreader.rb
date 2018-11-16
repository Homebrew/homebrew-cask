cask 'ebibookreader' do
  version '1.3.6.0'
  sha256 '45744649ebc146a500571278839874fb1283fd87e06dd2120fbbfe805469b4da'

  url 'http://haishin.ebookjapan.jp/contents/appli/reader/ebiBookReader.dmg'
  name 'ebi.BookReader'
  homepage 'http://www.ebookjapan.jp/ebj/reader/mac/'

  pkg 'ebibookreader.pkg'

  uninstall pkgutil: 'jp.co.ebookjapan.ebibookreader1360.ebiBookReader.pkg'
end
