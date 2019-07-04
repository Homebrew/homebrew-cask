cask 'diskcatalogmaker' do
  version '7.5.1'
  sha256 'f5ee073f683f157783c743dc241a276b10412b83d1d666cf7a36689cd9efbae8'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
