cask 'diskcatalogmaker' do
  version '7.4.4'
  sha256 'ae826bc83363c3955be7186b62f41fee3a57a0a641e1bb721e7c5abd08405cb2'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
