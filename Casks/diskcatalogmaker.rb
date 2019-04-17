cask 'diskcatalogmaker' do
  version '7.4.12'
  sha256 '16e96429e255f216250a83649ba3b10f107a1845d129d61fe8c76b376481d1f9'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
