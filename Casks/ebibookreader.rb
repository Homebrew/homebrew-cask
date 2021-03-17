cask "ebibookreader" do
  version "1.3.6.0"
  sha256 :no_check

  url "https://haishin.ebookjapan.jp/contents/appli/reader/ebiBookReader.dmg"
  appcast "https://www.ebookjapan.jp/ebj/reader/mac/reader.asp"
  name "ebi.BookReader"
  homepage "https://www.ebookjapan.jp/ebj/reader/mac/"

  pkg "ebibookreader.pkg"

  uninstall pkgutil: "jp.co.ebookjapan.ebibookreader1360.ebiBookReader.pkg"
end
