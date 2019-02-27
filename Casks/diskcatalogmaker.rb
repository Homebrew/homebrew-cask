cask 'diskcatalogmaker' do
  version '7.4.9'
  sha256 'fac5e4c4eb4933ede7849fbb069977ee311af7c394c12e3cac3d05066a20fac2'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
