cask 'diskcatalogmaker' do
  version '7.4.10'
  sha256 '4418d3cec2d7f361d57a39363fc9a7a864925e2f756f75989ba9b2ee5f8c989d'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
