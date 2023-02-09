cask "ebibookreader" do
  version "1.3.6.0"
  sha256 :no_check

  url "https://haishin.ebookjapan.jp/contents/appli/reader/ebiBookReader.dmg"
  name "ebi.BookReader"
  desc "Ebook reader"
  homepage "https://www.ebookjapan.jp/ebj/reader/mac/"

  pkg "ebibookreader.pkg"

  uninstall pkgutil: "jp.co.ebookjapan.ebibookreader1360.ebiBookReader.pkg"

  caveats do
    discontinued
  end
end
