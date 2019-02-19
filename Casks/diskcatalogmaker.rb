cask 'diskcatalogmaker' do
  version '7.4.8'
  sha256 'd09070dc0b80e956c3c712065253be04b2451aaa4541a8262a0a1483bcd3d558'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
